{
  plugins.nvim-autopairs.enable = true;

  plugins.luasnip = {
    enable = true;
    fromVscode = [
      {}
    ];
  };

  plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      snippet.expand = ''
          function(args)
          	require("luasnip").lsp_expand(args.body)
        end
      '';
      mapping = {
        "<C-j>" = "cmp.mapping.select_next_item()";
        "<C-k>" = "cmp.mapping.select_prev_item()";
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-e>" = "cmp.mapping.abort()";
        "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<C-Space>" = "cmp.mapping.complete()";
      };
      sources = [
        {name = "luasnip";}
        {name = "nvim_lsp";}
        {name = "nvim_lua";}
        {
          name = "buffer";
          option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
        }
      ];
    };
  };

  plugins.cmp.cmdline = {
    "/" = {
      mapping = {
        __raw = "cmp.mapping.preset.cmdline()";
      };
      sources = [
        {name = "buffer";}
      ];
    };
    ":" = {
      mapping = {
        __raw = "cmp.mapping.preset.cmdline()";
      };
      sources = [
        {name = "async_path";}
        {name = "buffer";}
        {name = "cmdline";}
      ];
    };
  };
}
