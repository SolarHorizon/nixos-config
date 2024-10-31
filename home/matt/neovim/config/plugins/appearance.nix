{
  plugins.indent-blankline = {
    enable = true;
    settings.scope.enabled = true;
  };

  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
        globalStatus = true;
        theme = "tokyonight";
      };
      sections = {
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1;
          }
        ];
      };
    };
  };

  plugins.alpha = {
    enable = true;
    theme = "theta";
  };

  plugins.web-devicons.enable = true;
}
