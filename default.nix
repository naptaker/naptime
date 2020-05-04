{ pkgs ? import ./nix
, songs ? null
, debug ? false
}:
let
  version = builtins.readFile ./VERSION;

  lilypond = pkgs.lilypond-with-improviso;

  Makefile = pkgs.writeText "Makefile" (builtins.readFile ./Makefile.src);

  inherit (pkgs.lib) concatMapStringsSep isString intersectLists optionalString splitString;

  mkScore = attrs@{ songName, pdfName ? songName, ... }:
    pkgs.stdenv.mkDerivation
      (attrs // rec {
        pname = "naptime-${songName}";
        inherit pdfName songName version;
        src = ./. + "/songs/${songName}";

        FONTCONFIG_FILE = pkgs.makeFontsConf { fontDirectories = [ ]; };

        nativeBuildInputs = [
          lilypond
        ];

        buildPhase = ''
          install -m644 ${Makefile} ./Makefile
          install -m755 -d $out
        '';

        preInstall = ''
          installFlagsArray=(
            job-count=''${NIX_BUILD_CORES:-1}
            ${optionalString debug "loglevel=debug"}
            pdfName=${pdfName}
            prefix=$out/
          );
        '';

        # TODO: meta
      }
      );
in
pkgs.symlinkJoin {
  name = "naptime";
  inherit version;

  paths = with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs));

  meta = with pkgs.stdenv.lib; {
    description = "Scores for the Naptaker album, Naptime";
    homepage = http://github.com/naptaker/naptime;
    maintainers = with maintainers; [ yurrriq ];
    license = licenses.cc-by-nc-sa-40;
  };
}
