with import <nixpkgs> { };

fetchFromGitHub {
  owner = "NixOS";
  repo = "nixpkgs";
  rev = "3ea16e9";
  sha256 = "1043zkz69arqax62anb0wqq7bl7gj7axm8h7dcsmy2ph1agr242a";
}
