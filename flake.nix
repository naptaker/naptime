{
  description = "Scores from Naptime by Naptaker";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";

    gridly = {
      flake = false;
      # url = "github:openlilylib/gridly";
      url = "github:yurrriq/gridly/lilypond-2.24";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker/lilypond-2.24";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";

    oll-core = {
      flake = false;
      # url = "github:openlilylib/oll-core";
      url = "github:yurrriq/oll-core/lilypond-2.24";
    };

    pre-commit-hooks-nix.url = "github:cachix/pre-commit-hooks.nix";

    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = inputs@{ flake-parts, nixpkgs, self, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake = {
        overlays.default = _final: prev: rec {
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

          lilypond-with-improviso = prev.lilypond-with-fonts.overrideAttrs (_: {
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
      };

      imports = [
        inputs.pre-commit-hooks-nix.flakeModule
        inputs.treefmt-nix.flakeModule
      ];

      systems = [
        "x86_64-linux"
      ];

      perSystem = { config, pkgs, system, ... }: {
        _module.args.pkgs = import nixpkgs {
          config.allowUnfreePredicate = pkg:
            nixpkgs.lib.hasPrefix "naptime" (nixpkgs.lib.getName pkg);
          overlays = [
            self.overlays.default
          ];
          inherit system;
        };

        devShells.default = with pkgs; mkShell {
          LILYPOND_SHARE_DIR = "${lilypond-with-improviso}/share";

          nativeBuildInputs = [
            (frescobaldi.override {
              lilypond = myLilypond;
            })
            lilypond-with-improviso
            timidity
          ];

          inherit (config.pre-commit.devShell) shellHook;
        };

        packages =
          let
            naptime = pkgs.callPackage ./. {
              lilypond = pkgs.myLilypond;
            };
          in
          {
            inherit (pkgs) lilypond-with-improviso myLilypond oll-lib;
            inherit naptime;
            default = naptime;
          } // naptime.passthru;

        pre-commit.settings.hooks = {
          treefmt.enable = true;
        };

        treefmt = {
          projectRootFile = ./flake.nix;
          programs = {
            deadnix.enable = true;
            nixpkgs-fmt.enable = true;
          };
        };
      };
    };
}
