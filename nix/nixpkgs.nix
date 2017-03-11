with import <nixpkgs> { };

fetchFromGitHub {
  owner = "NixOS";
  repo = "nixpkgs";
  rev = "5bf3b4c";
  sha256 = "1dyq3676f1fyx3kxsfwyyk8igkbalxpclmnxn3fh43s39bg3dvb1";
}
