{
  lib,
  pkgs,
	inputs,
  ...
}:
{
	imports = [inputs._1password-shell-plugins.hmModules.default];

	programs._1password-shell-plugins = {
		enable = true;
		plugins = with pkgs; [ 
			gh
		];
	};

  programs.ssh = {
    enable = true;
		extraConfig = lib.mkMerge [
			(lib.mkIf pkgs.stdenv.isLinux ''
				IdentityAgent "~/.1password/agent.sock"
			'')
			(lib.mkIf pkgs.stdenv.isDarwin ''
				IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
			'')
		];
  };
}
