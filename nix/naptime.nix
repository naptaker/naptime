{ lib, stdenv
, debug, lilypond, songs, version }:

let

  _songs = splitString "\n" (builtins.readFile ../SONGLIST);

  openlilylib = fetchTarball {
    url = "https://github.com/yurrriq/snippets/archive/138955a7.tar.gz";
    sha256 = "0lgkisms8p4q5h1as69gzmdqra242q7lj8vm1pmdgnwwyy8s1i1v";
  };

  inherit (lib) concatMapStringsSep isString intersectLists optionalString splitString;

  mkScore = a@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation (a // rec {
      name = "naptime-${version}-${songName}";
      inherit pdfName songName version;
      src = ../. + "/songs/${songName}";

      phases = "unpackPhase buildPhase installPhase";

      buildPhase = ''
        install -m755 -d $out
      '';

      preInstall = ''
        installFlagsArray=(
          -B
          openlilylib=${openlilylib}
          lilypond=${lilypond}/bin/lilypond
          job-count=''${NIX_BUILD_CORES:-1}
          pdfName=${pdfName}
          prefix=$out/
          ${optionalString debug "DEBUG=1"}
        );
      '';

      # TODO: meta
    });

in

{
  inherit openlilylib;

  scores = map (songName: mkScore { inherit songName; })
               (if (isNull songs || !isString songs)
                  then _songs
                  else intersectLists (splitString " " songs) _songs);
}
