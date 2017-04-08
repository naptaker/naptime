{ nixpkgs ? import ./nix/nixpkgs.nix
, scores ? null
, debug ? false
}:

with import nixpkgs { };

with pkgs.lib;

let
  version = "0.1.1";

  lilypond-with-improviso = lilypond-with-fonts.override {
    fonts = with openlilylib-fonts; [ improviso ];
  };

  FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

  openlilylib = fetchFromGitHub {
    owner = "yurrriq";
    repo = "snippets";
    rev = "a62d43c";
    sha256 = "00znlnhqp12p4yqny1s346dqczjc3z0rgdf7zcaasbz94p6fm30y";
  };

  mkSong = a@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation (a // rec {
      name = "naptime-${songName}-${version}";
      inherit FONTCONFIG_FILE pdfName songName version;
      src = ./. + "/songs/${songName}";

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
    loon_juice = mkSong {
      songName = "loon_juice";
    };
    the_rustler = mkSong {
      songName = "the_rustler";
    };
    # disco_ball = mkSong {
    #   songName = "disco_ball";
    # };
    # i_want_you = mkSong {
    #   songName = "i_want_you";
    # };
    # no_fun = mkSong {
    #   songName = "no_fun";
    # };
    cover_yr_eyes = mkSong {
      songName = "cover_yr_eyes";
    };
    halfway_haus = mkSong {
      songName = "halfway_haus";
    };
    i_think_you_invented_it = mkSong {
      songName = "i_think_you_invented_it";
    };
    mountain = mkSong {
      songName = "mountain";
    };
    space_is_the_place = mkSong {
      songName = "space_is_the_place";
    };
    funeral_town = mkSong {
      songName = "funeral_town";
    };
    # im_already_dead = mkSong {
    #   songName = "im_already_dead";
    # };
    all = [
      loon_juice
      the_rustler
      # disco_ball
      # i_want_you
      # no_fun
      cover_yr_eyes
      halfway_haus
      i_think_you_invented_it
      # FIXME: https://github.com/NixOS/nix/issues/759
      # mountain
      space_is_the_place
      funeral_town
      # im_already_dead
    ];
  };

  env = stdenv.mkDerivation rec {
    name = "naptime-${version}-env";
    inherit FONTCONFIG_FILE openlilylib version;
    buildInputs = [
      lilypond-with-improviso
      watchman
      pkgs.python27Packages.pywatchman
    ];
  };

  engravedScores =
    if (isNull scores || !isString scores)
       then songs.all
       else map (songName: mkSong { inherit songName; })
                (splitString " " scores);

  ## FIXME: Look into $outputLib and "multiple-output derivations"
  drv = stdenv.mkDerivation {
    name = "naptime-${version}";
    inherit FONTCONFIG_FILE engravedScores openlilylib version;
    src = ./songs;

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

if inNixShell then env else drv
# {
#   env = env;
#   drv = drv;
#   scores = engravedScores;
# }
