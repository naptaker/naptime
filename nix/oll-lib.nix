{ stdenv, oll-core, gridly, naptaker }:

stdenv.mkDerivation {
  pname = "oll-lib";
  version = "20200428";
  dontUnpack = true;
  dontBuild = true;
  src = null;
  buildInputs = [ oll-core gridly naptaker ];
  installPhase = ''
    mkdir -p $out
    cp -rv ${oll-core} $out/oll-core
    cp -rv ${gridly} $out/gridly
    cp -rv ${naptaker} $out/naptaker
  '';
}
