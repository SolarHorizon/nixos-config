{pkgs}: {
  luau-lsp = pkgs.callPackage ./luau-lsp.nix {};
  wally = pkgs.callPackage ./wally.nix {};
}
