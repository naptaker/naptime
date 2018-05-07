with import ./nix/lib.nix;

{ system ? builtins.currentSystem
, nixpkgs ? fetchNixpkgs (importJSON ./nixpkgs-src.json)."${system}"
, songs ? null
, debug ? false
}:

let
  pkgs = import nixpkgs {
    inherit system;
    config.packageOverrides = super: rec {
      lilypond-with-improviso = super.lilypond-with-fonts.override {
        fonts = with super.openlilylib-fonts; [ improviso ];
      } // {
        inherit (lilypond-unstable) meta;
      };

      lilypond-unstable = super.stdenv.lib.overrideDerivation super.lilypond-unstable (p: rec {
        majorVersion = "2.19";
        minorVersion = "80";
        version = "${majorVersion}.${minorVersion}";
        name = "lilypond-${version}";

        src = super.fetchurl {
          url = "http://download.linuxaudio.org/lilypond/sources/v${majorVersion}/lilypond-${version}.tar.gz";
          sha256 = "0lql4q946gna2pl1g409mmmsvn2qvnq2z5cihrkfhk7plcqdny9n";
        };
      });
    };
  };

  lilypond = pkgs.lilypond-with-improviso;

  version = builtins.readFile ./VERSION;
in

with import ./nix/naptime.nix {
  inherit (pkgs) lib stdenv;
  inherit debug songs lilypond version;
};

pkgs.stdenv.mkDerivation rec {
  name = "naptime-${version}";
  inherit openlilylib version;
  src = ./songs;

  nativeBuildInputs = [
    lilypond
  ] ++ (with pkgs; [
    nix
  ]);

  phases = "unpackPhase buildPhase installPhase";

  buildPhase = "true";

  outputs = [ "out" ] ++ map (score: score.songName) scores;

  installPhase =
    pkgs.lib.concatMapStringsSep "\n"
      (score: ''
        install -m644 -Dt ''$${score.songName} ${score}/*
        install -m644 -Dt $out ''$${score.songName}/${score.pdfName}.pdf
      '')
      scores;

  meta = with pkgs.stdenv.lib; {
    description = "Scores for the Naptaker album, Naptime";
    homepage = http://github.com/naptaker/naptime;
    maintainers = with maintainers; [ yurrriq ];
    inherit (lilypond.meta) platforms;
    license = licenses.cc-by-nc-sa-40;
  };
}
