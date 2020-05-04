{ pkgs ? import ./nix
, debug ? false
}:
let
  version = builtins.readFile ./VERSION;

  meta = with pkgs.stdenv.lib; {
    description = "Scores from Naptime by Naptaker";
    homepage = "https://github.com/naptaker/naptime";
    maintainers = with maintainers; [ yurrriq ];
    license = licenses.cc-by-nc-sa-40;
  };

  lilypond = pkgs.lilypond-with-improviso;

  Makefile = pkgs.writeText "Makefile" (builtins.readFile ./Makefile.src);

  inherit (pkgs.lib) concatMapStringsSep isString intersectLists optionalString splitString;

  mkScore = attrs@{ songName, pdfName ? songName, ... }:
    pkgs.stdenv.mkDerivation
      (
        attrs // {
          pname = "naptime-${songName}";
          inherit pdfName songName version;
          src = ./. + "/songs/${songName}";

          FONTCONFIG_FILE = pkgs.makeFontsConf { fontDirectories = [ ]; };

          nativeBuildInputs = [
            lilypond
          ];

          buildPhase = ''
            install -m644 ${Makefile} ./Makefile
            install -dm755 $out
          '';

          preInstall = ''
            installFlagsArray=(
              job-count=''${NIX_BUILD_CORES:-1}
              ${optionalString debug "loglevel=debug"}
              pdfName=${pdfName}
              prefix=$out/
            );
          '';

          meta = meta // {
            description = "${songName} score from Naptime by Naptaker";
          };
        }
      );

  CNAME = pkgs.stdenv.mkDerivation {
    name = "naptaker-scores-CNAME";
    dontUnpack = true;
    dontBuild = true;
    installPhase = ''
      install -dm755 $out
      install -m644 ${pkgs.writeText "CNAME" "scores.naptaker.band"} $out/CNAME
    '';
  };
in
pkgs.symlinkJoin {
  name = "naptime";
  inherit meta version;

  paths = [ CNAME ] ++ (with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs)));
}
