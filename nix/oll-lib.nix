{ stdenv, oll-core, gridly, naptaker }:

stdenv.mkDerivation {
  pname = "oll-lib";
  version = "20200504";
  dontUnpack = true;
  dontBuild = true;
  buildInputs = [ oll-core gridly naptaker ];
  installPhase = ''
    mkdir -p $out
    cp -rv ${oll-core} $out/oll-core
    cp -rv ${gridly} $out/gridly
    cp -rv ${naptaker} $out/naptaker
  '';
}
