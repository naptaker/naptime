{
  description = "Scores from Naptime by Naptaker";

  inputs = {
    gridly = {
      flake = false;
      # url = "github:openlilylib/gridly";
      url = "github:yurrriq/gridly/lilypond-2.24";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker/lilypond-2.24";
    };

    oll-core = {
      flake = false;
      # url = "github:openlilylib/oll-core";
      url = "github:yurrriq/oll-core/lilypond-2.24";
    };

    nixpgks.url = "github:nixos/nixpkgs/0fae3035"; # 2.24
    # nixpkgs.url = "github:nixos/nixpkgs"; # 2.25 (unstable)
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

      lilypond-with-improviso = prev.lilypond-with-fonts.overrideAttrs(_: {
        paths = [ prev.lilypond prev.openlilylib-fonts.improviso ];
      });

      oll-lib = prev.stdenv.mkDerivation {
        pname = "oll-lib";
        version = "20230821";
        dontUnpack = true;
        dontBuild = true;
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
        FONTCONFIG_FILE = makeFontsConf {
          fontDirectories = [];
        };

        LILYPOND_SHARE_DIR = "${lilypond-with-improviso}/share";

        buildInputs = [
          (frescobaldi.override {
            lilypond = myLilypond;
          })
          lilypond-with-improviso
          nixpkgs-fmt
          timidity
        ];
      };

      packages.x86_64-linux =
        let
          naptime = pkgs.callPackage ./. {
            lilypond = pkgs.myLilypond;
          };
        in
        {
          inherit (pkgs) lilypond-with-improviso oll-lib;
          inherit naptime;
        } // naptime.passthru;
    }
  );
}
