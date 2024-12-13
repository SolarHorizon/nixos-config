{inputs, ...}: {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
  ];

  programs.nixvim = {
    imports = [
      ./config/keymaps.nix
      ./config/options.nix
      ./config/plugins
      ./config/colorschemes.nix
    ];

    enable = true;
    defaultEditor = true;

    performance = {
      # can't use this when conform.nvim and overseer.nvim are both enabled
      # combinePlugins = {
      #   enable = true;
      #   standalonePlugins = ["nvim-treesitter"];
      # };
      byteCompileLua.enable = true;
    };

    viAlias = true;
    vimAlias = true;

    luaLoader.enable = true;
  };
}
