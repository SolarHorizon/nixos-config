{
  plugins.notify.enable = true;
  plugins.dressing.enable = true;

  plugins.noice = {
    enable = true;
    settings = {
      cmdline.enabled = false;
      messages.enabled = false;
      override = {
        "vim.lsp.util.convert_input_to_markdown_lines" = true;
        "vim.lsp.util.stylize_markdown" = true;
        "cmp.entry.get_documentation" = true;
      };
      presets = {
        bottom_search = true;
        command_palette = true;
        long_message_to_split = true;
        lsp_doc_border = true;
      };
      views.mini = {
        position = {
          row = -3;
        };
        win_options = {
          winblend = 0;
        };
      };
    };
  };
}
