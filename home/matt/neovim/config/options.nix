{
  opts = {
    scrolloff = 6;
    tabstop = 4;
    shiftwidth = 4;
    softtabstop = 0;
    wrap = false;
    splitright = true;
    splitbelow = true;
    termguicolors = true;
    number = true;
    colorcolumn = "81";
    textwidth = 80;
    relativenumber = true;
    smartcase = true;
    ignorecase = true;
    incsearch = true;
    errorbells = false;
    signcolumn = "yes";
  };
  globals = {
    mapleader = " ";
  };
  files = {
    "ftplugin/nix.lua" = {
      opts = {
        shiftwidth = 2;
        tabstop = 2;
      };
    };
    "ftplugin/javascript.lua" = {
      opts = {
        expandtab = true;
        shiftwidth = 2;
        tabstop = 2;
      };
    };
    "ftplugin/typescript.lua" = {
      opts = {
        expandtab = true;
        shiftwidth = 2;
        tabstop = 2;
      };
    };
    "ftplugin/json.lua" = {
      opts = {
        expandtab = true;
        shiftwidth = 2;
        tabstop = 2;
      };
    };
  };
}
