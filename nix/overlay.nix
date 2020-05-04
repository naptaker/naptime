self: super: rec {

  inherit (import (import ./sources.nix).niv { pkgs = super; }) niv;

  inherit (import ./sources.nix) gridly naptaker oll-core;

  lilypond-unstable = super.callPackage ./lilypond/unstable.nix {
    inherit (super) lilypond;
  };

  lilypond-with-improviso = super.callPackage ./lilypond.nix {
    lilypond = lilypond-unstable.with-fonts [ "improviso" ];
  };

  oll-lib = self.callPackage ./oll-lib.nix { };

}
