{
  pkgs,
  username,
  inputs,
  outputs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  programs.zsh = {
    enable = true;
    enableBashCompletion = true;
    enableCompletion = true;
    enableLsColors = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ls = "ls --color=auto";
      la = "ls -a";
      ll = "ls -l";
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;
    users.${username} = {
      isNormalUser = true;
    };
  };

  home-manager = {
    extraSpecialArgs = {inherit inputs outputs;};
    useGlobalPkgs = true;
    useUserPackages = true;

    users.${username} = {
      imports = [
        ./${username}
      ];

      home.packages = with pkgs; [
        just
        git
        direnv
      ];

      systemd.user.startServices = "sd-switch";
      home.stateVersion = "24.11";
    };
  };
}
