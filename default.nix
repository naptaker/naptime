{ pkgs ? import ./nix
, loglevel ? "info"
, CNAME ? "scores.naptaker.band"
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

          enableParallelBuilding = true;

          buildPhase = ''
            install -m644 ${Makefile} ./Makefile
            install -dm755 $out
          '';

          installFlags = [
            "job-count=$${NIX_BUILD_CORES:-1}"
            "loglevel=${loglevel}"
            "pdfName=${pdfName}"
            "prefix=${placeholder "out"}"
          ];

          postInstall = optionalString (loglevel != "debug") ''
            rm -frv $out/*.log
          '';

          meta = meta // {
            description = "${songName} score from Naptime by Naptaker";
          };
        }
      );
in
pkgs.symlinkJoin {
  name = "naptime-${version}";
  inherit meta version;
  enableParallelBuilding = true;
  paths = with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs));
  postBuild = ''
    ln -s ${pkgs.writeText "CNAME" CNAME} $out/CNAME
  '';
}
