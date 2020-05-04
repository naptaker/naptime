{ pkgs ? import ./nix }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    lilypond-with-improviso
    # pythonPackages.pywatchman
    # timidity
  ];
  LILYPOND_SHARE_DIR = "${pkgs.lilypond-unstable}/share";
}
