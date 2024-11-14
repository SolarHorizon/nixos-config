{pkgs, ...}: {
  imports = [
    ./neovim
    ./starship.nix
    ./1password.nix
  ];

  home.packages = with pkgs; [
    ripgrep
    stylua
    prettierd
    alejandra
  ];

  programs = {
    git = {
      enable = true;
      lfs.enable = true;
      userName = "SolarHorizon";
      userEmail = "matt@solarhorizon.dev";
    };

    direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };
  };
}
