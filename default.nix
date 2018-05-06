with import ./nix/lib.nix;

{ nixpkgs ? fetchNixpkgs (importJSON ./nixpkgs-src.json)
, songs ? null
, debug ? false
}:

let
  pkgs = import nixpkgs {};

  lilypond = pkgs.lilypond-with-fonts.override {
    fonts = with pkgs.openlilylib-fonts; [ improviso ];
  };

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
    inherit (pkgs.lilypond-unstable.meta) platforms;
    license = licenses.cc-by-nc-sa-40;
  };
}
