{
  lib,
  pkgs,
  ...
}: let
  opPath = lib.mkMerge [
    (lib.mkIf pkgs.stdenv.isLinux "~/.1password/agent.sock")
    (lib.mkIf pkgs.stdenv.isDarwin "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock")
  ];
in {
  programs._1password.enable = true;

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host *
        IdentityAgent ${opPath}
    '';
  };
}
