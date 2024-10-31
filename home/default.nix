{
  pkgs,
  username,
  inputs,
  outputs,
  ...
}: {
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

      systemd.user.startServices = "sd-switch";
      home.stateVersion = "24.11";
    };
  };
}
