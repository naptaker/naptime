{ stdenv, callPackage, fetchgit, lilypond, ghostscript, gyre-fonts }:
let
  version = "2.20.0";

  self = lilypond.overrideAttrs
    (oldAttrs: {
      inherit version;

      src = fetchgit {
        url = "https://git.savannah.gnu.org/r/lilypond.git";
        rev = "release/${version}-1";
        sha256 = "182g8429qrzcakqv2c83j66mphd73s8y320xdk6iwk7mca9v05y3";
      };

      configureFlags = [
        "--disable-documentation"
        "--with-urwotf-dir=${ghostscript}/share/ghostscript/fonts"
        "--with-texgyre-dir=${gyre-fonts}/share/fonts/truetype/"
      ];
    });
in
self // rec {
  with-fonts = fonts: callPackage ./with-fonts.nix {
    inherit fonts;
    lilypond = self;
  };
  passthru = { inherit with-fonts; };
}
