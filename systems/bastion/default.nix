{inputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nixos-wsl.nixosModules.default
    ./hardware.nix
    ../../modules/wsl
    ../../home
  ];

  services.automatic-timezoned.enable = true;
  system.stateVersion = "24.11";
}
