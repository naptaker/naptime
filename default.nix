with import <nixpkgs> { };

stdenv.mkDerivation rec {
  name = "naptime-${version}";
  version = "0.0.1";

  buildInputs = [ lilypond-unstable ];
}
