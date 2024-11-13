build name:
	nix build .#nixosConfigurations.{{name}}.config.system.build.toplevel
