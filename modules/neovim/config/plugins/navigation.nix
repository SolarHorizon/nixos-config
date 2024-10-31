{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    popupBorderStyle = "rounded";

    eventHandlers = {
      file_opened = ''
        function(file_opened)
        	require("neo-tree").close_all()
        end
      '';
    };

    filesystem = {
      filteredItems = {
        forceVisibleInEmptyFolder = true;
        alwaysShow = [
          ".lune"
          ".storybook"
          ".env"
        ];
        hideByName = [
          "node_modules"
        ];
        hideByPattern = [
          "*.lock"
        ];
      };
    };

    buffers = {
      followCurrentFile = {
        enabled = true;
      };
    };
  };

  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find File";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Live Grep";
        };
      };
      "<leader>fr" = {
        action = "old_files";
        options = {
          desc = "Recent Files";
        };
      };
      "<C-p>" = {
        action = "find_files";
        options = {
          desc = "Find File";
        };
      };
      "<C-g>" = {
        action = "live_grep";
        options = {
          desc = "Live Grep";
        };
      };
    };
  };
}
