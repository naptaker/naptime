{ lib, stdenv
, debug, lilypond, songs, version }:

let

  _songs = splitString "\n" (builtins.readFile ../SONGLIST);

  openlilylib = fetchTarball {
    url = "https://github.com/yurrriq/snippets/archive/bafb48a.tar.gz";
    sha256 = "1wcfs2xfz1wxw6rv4c5w218irwmwlabn3pz940az9jbdh3f3dyqm";
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
