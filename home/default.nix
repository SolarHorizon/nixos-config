{
  pkgs,
  username,
  inputs,
  outputs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  programs.zsh.enable = true;

  users.users.${username} = {
    isNormalUser = true;
    shell = pkgs.zsh;
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
