{
  description = "Scores from Naptime by Naptaker";

  inputs = {
    gridly = {
      flake = false;
      url = "github:openlilylib/gridly";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker";
    };

    oll-core = {
      flake = false;
      url = "github:openlilylib/oll-core";
    };

    nixpkgs.url = "github:nixos/nixpkgs";
    # nixpkgs.url = "github:nixos/nixpkgs/60255a1d";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    overlay = final: prev: rec {
      myLilypond = prev.stdenv.mkDerivation {
        pname = "lilypond";
        inherit (lilypond-with-improviso) version;
        dontUnpack = true;
        dontBuild = true;
        nativeBuildInputs = [ prev.makeWrapper ];
        propagatedBuildInputs = [
          lilypond-with-improviso
          oll-lib
        ];
        installPhase = ''
          makeWrapper ${lilypond-with-improviso}/bin/lilypond $out/bin/lilypond \
            --add-flags "--include=${oll-lib}"
        '';
      };

      # FIXME: https://github.com/NixOS/nixpkgs/pull/140490
      lilypond-with-improviso = with prev;
        prev.lib.appendToName "with-fonts" (prev.symlinkJoin {
          inherit (prev.lilypond) meta name version;
          paths = [ prev.lilypond prev.openlilylib-fonts.improviso ];
          nativeBuildInputs = [ prev.makeWrapper ];
          postBuild = ''
            for p in $out/bin/*; do
              wrapProgram "$p" --set LILYPOND_DATADIR "$out/share/lilypond/${prev.lilypond.version}"
            done
          '';
        });

      oll-lib = prev.stdenv.mkDerivation {
        pname = "oll-lib";
        version = "20200504";
        dontUnpack = true;
        dontBuild = true;
        buildInputs = with inputs; [ oll-core gridly naptaker ];
        installPhase = with inputs; ''
          mkdir -p $out
          cp -rv ${oll-core} $out/oll-core
          cp -rv ${gridly} $out/gridly
          cp -rv ${naptaker} $out/naptaker
        '';
      };
    };
  } // (
    let
      pkgs = import nixpkgs {
        config.allowUnfreePredicate = pkg:
          nixpkgs.lib.hasPrefix "naptime" (nixpkgs.lib.getName pkg);
        overlays = [ self.overlay ];
        system = "x86_64-linux";
      };
    in
    {
      defaultPackage.x86_64-linux = self.packages.x86_64-linux.naptime;

      devShell.x86_64-linux = with pkgs; mkShell {
        LILYPOND_SHARE_DIR = "${myLilypond}/share";
        buildInputs = [
          (frescobaldi.override {
            lilypond = myLilypond;
          })
          lilypond-with-improviso
          nixpkgs-fmt
          # pythonPackages.pywatchman
          timidity
        ];
      };

      packages.x86_64-linux =
        let
          naptime = pkgs.callPackage ./. {
            lilypond = pkgs.lilypond-with-improviso;
          };
        in
        {
          inherit (pkgs) lilypond-with-improviso oll-lib;
          inherit naptime;
        } // naptime.passthru;
    }
  );
}
