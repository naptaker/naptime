{ nixpkgs ? import ./nix/nixpkgs.nix
, scores ? null
, debug ? false
}:

with import nixpkgs { };

with pkgs.lib;

let
  version = "0.0.1";

  lilypond-with-improviso = lilypond-with-fonts.override {
    fonts = with openlilylib-fonts; [ improviso ];
  };

  openlilylib = fetchFromGitHub {
    owner = "yurrriq";
    repo = "snippets";
    rev = "0180270";
    sha256 = "0mahv9r12gscsykaf9r1lqpb4z0v987b1d3nyv7mznpy384bl5s5";
  };

  mkSong = a@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation (a // rec {
      name = "naptime-${songName}-${version}";
      inherit pdfName songName version;
      src = ./. + "/songs/${songName}";

      nativeBuildInputs = [ lilypond-with-improviso openlilylib ];

      buildPhase = ''
        install -m755 -d $out
      '';

      preInstall = ''
        installFlagsArray=(
          -B
          openlilylib=${openlilylib}
          lilypond=${lilypond-with-improviso}/bin/lilypond
          pdfName=${pdfName}
          prefix=$out/
          ${optionalString debug "DEBUG=1"}
        );
      '';

      # TODO: meta
    });

  songs = rec {
    cover_yr_eyes = mkSong {
      songName = "cover_yr_eyes";
    };
    funeral_town = mkSong {
      songName = "funeral_town";
    };
    loon_juice = mkSong {
      songName = "loon_juice";
    };
    # FIXME:
    # mountain = mkSong {
    #   songName = "mountain";
    # };
    all = [
      cover_yr_eyes
      funeral_town
      # FIXME: mountain
    ];
  };

  env = stdenv.mkDerivation rec {
    name = "naptime-${version}-env";
    inherit openlilylib version;

    buildInputs = [ lilypond-with-improviso ];
  };

  engravedScores =
    if (isNull scores || !isString scores)
       then songs.all
       else map (songName: mkSong { inherit songName; })
                (splitString " " scores);

  drv = stdenv.mkDerivation {
    name = "naptime-${version}";
    inherit version;
    src = ./songs;

    nativeBuildInputs = engravedScores;

    buildPhase = "true";

    installPhase = ''
      install -m755 -d $out
      ${concatMapStringsSep "\n"
          (score: "install -m644 -t $out ${score}/*")
          engravedScores}
    '';
    # TODO: meta
  };
in

# if inNixShell then env else drv
{
  env = env;
  drv = drv;
  songs = songs;
}
