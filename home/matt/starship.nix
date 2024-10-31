{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      username = {
        format = "[$user](blue)";
        show_always = true;
      };
      hostname = {
        format = "[@$hostname](blue)";
        ssh_only = false;
      };
      left_format = "$username$hostname$directory$git_branch$git_commit$git_status$git_state$line_break$character";
      right_format = "$all\${custom.rojo}";
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
