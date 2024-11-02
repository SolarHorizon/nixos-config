build name:
	nix build .#nixosConfigurations.{{name}}.config.system.build.toplevel

tarball name:
	nix build .#nixosConfigurations.{{name}}.config.system.build.tarballBuilder
