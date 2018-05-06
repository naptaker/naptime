with builtins;

assert (0 <= compareVersions nixVersion "2.0");

{
  fetchNixpkgs =
    { rev, sha256}:
    fetchTarball {
      url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
      inherit sha256;
    };

  importJSON = path: fromJSON (readFile path);
}
