{ pkgs ? import ./nix }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    (frescobaldi.override {
      lilypond = lilypond-with-improviso;
    })
    lilypond-with-improviso
    # pythonPackages.pywatchman
    timidity
  ];
  LILYPOND_SHARE_DIR = "${pkgs.lilypond-unstable}/share";
}
