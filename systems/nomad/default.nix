{inputs, ...}: {
  imports = [
    inputs.home-manager.nixosModules.home-manager
    inputs.nixos-wsl.nixosModules.default
    ./hardware.nix
    ../../modules/wsl
    ../../home
  ];

  networking.hostName = "nomad";
  services.automatic-timezoned.enable = true;
  system.stateVersion = "24.11";
}
