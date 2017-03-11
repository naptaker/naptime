{ nixpkgs ? import ./nix/nixpkgs.nix
, scores ? null
, debug ? false
}:

with import nixpkgs { };

with pkgs.lib;

let
  version = "0.0.1";
  src = ./.;

  lilypond-with-improviso = lilypond-with-fonts.override {
    fonts = with openlilylib-fonts; [ improviso ];
  };

  deletePdfs = "find songs -name '*.pdf' -delete";

  mkSong = a@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation (a // rec {
      name = "naptime-${songName}-${version}";
      inherit version;
      src = ./.;
      patchPhase = deletePdfs;
      buildInputs = [ lilypond-with-improviso ];
      makeFlags = songName + optionalString debug " DEBUG=1";
      installPhase = ''
        install -m755 -d $out
        install -m644 songs/${songName}/main.pdf $out/${pdfName}.pdf
      '';
      # TODO: meta
    });

  songs = rec {
    funeral_town = mkSong {
      songName = "funeral_town";
    };
    mountain = mkSong {
      songName = "mountain";
    };
    all = [
     funeral_town
     mountain
    ];
  };

  env = stdenv.mkDerivation rec {
    name = "naptime-${version}-env";
    inherit version;

    buildInputs = [ lilypond-with-improviso ];
  };

  scoresToEngrave =
    if (isNull scores || !isString scores)
       then songs.all
       else map (songName: mkSong { inherit songName; })
                (splitString " " scores);

  drv = stdenv.mkDerivation rec {
    name = "naptime-${version}";
    inherit version;
    src = ./.;

    patchPhase = deletePdfs;

    buildInputs = [ lilypond-with-improviso ] ++ scoresToEngrave;

    buildPhase = "true";

    installPhase = ''
      install -m755 -d $out
      ${concatMapStringsSep "\n"
          (song: "install -m644 ${song}/*.pdf $out")
          scoresToEngrave}
    '';
    # TODO: meta
  };
in

if inNixShell
   then env
   else drv
