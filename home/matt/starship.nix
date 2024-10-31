{
  programs.starship = {
    enable = true;
    settings = {
      username = {
        format = "[$user](blue)";
        show_always = true;
      };
      hostname = {
        format = "[@$hostname](blue)";
        ssh_only = false;
      };
      custom = {
        rojo = {
          detect_extensions = ["project.json"];
          style = "bold red";
          symbol = " ";
          command = "rojo --version | cut -c 6-";
          format = "[$symbol($output )]($style)";
        };
      };
    };
  };
}
