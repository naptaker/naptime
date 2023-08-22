{ lib
, lilypond
, makeFontsConf
, stdenv
, symlinkJoin
, writeText
, loglevel ? "info"
, CNAME ? "scores.naptaker.band"
}:
let
  version = builtins.readFile ./VERSION;

  meta = with lib; {
    description = "Scores from Naptime by Naptaker";
    homepage = "https://github.com/naptaker/naptime";
    maintainers = with maintainers; [ yurrriq ];
    license = licenses.cc-by-nc-sa-40;
  };

  Makefile = writeText "Makefile" (builtins.readFile ./Makefile.src);

  inherit (lib) optionalString;

  mkScore = attrs@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation
      (
        attrs // {
          pname = "naptime-${songName}";
          inherit pdfName songName version;
          src = ./. + "/songs/${songName}";

          FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

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
symlinkJoin rec {
  name = "naptime-${version}";
  inherit meta version;
  enableParallelBuilding = true;
  passthru = with lib;
    listToAttrs (map (song: nameValuePair (getName song) song) paths);
  paths = with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs));
  postBuild = ''
    ln -s ${writeText "CNAME" CNAME} $out/CNAME
  '';
}
