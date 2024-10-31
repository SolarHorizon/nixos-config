{
  imports = [
    ../../modules/neovim
  ];

  programs = {
    git = {
      enable = true;
      lfs.enable = true;
      extraConfig = {
        user = {
          name = "SolarHorizon";
          email = "matt@solarhorizon.dev";
        };
      };
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
