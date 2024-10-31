{
  imports = [
    ./neovim
    ./starship.nix
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

    zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
      shellAliases = {
        ls = "ls --color=auto";
        la = "ls -a";
        ll = "ls -l";
      };
    };
  };
}
