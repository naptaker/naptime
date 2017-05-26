with import <nixpkgs> { };

fetchFromGitHub {
  owner = "NixOS";
  repo = "nixpkgs";
  rev = "e284740dd5265a8f30699692aa1bb59df5dfb9d6";
  sha256 = "1qna2bz1950cn54ih2glpgpjv6jvf3rdjjyac9jl1gbi9433fmib";
}
