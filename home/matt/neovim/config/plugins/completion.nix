{
  plugins.nvim-autopairs.enable = true;

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      snippet.expand = ''
        function(args)
        	require("luasnip").lsp_expand(args.body)
        end
      '';
    };
  };

  plugins.cmp-async-path.enable = true;
  plugins.cmp-buffer.enable = true;
  plugins.cmp-cmdline.enable = true;
  plugins.cmp-git.enable = true;
  plugins.cmp-nvim-lsp.enable = true;
  plugins.cmp-nvim-lsp-document-symbol.enable = true;
  plugins.cmp-nvim-lsp-signature-help.enable = true;
  plugins.cmp-rg.enable = true;
  plugins.cmp_luasnip.enable = true;

  plugins.luasnip = {
    enable = true;
    fromVscode = [
      {}
    ];
  };
}
