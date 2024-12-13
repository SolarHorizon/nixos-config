{lib, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      format = lib.concatStrings [
        "$username"
        "$hostname"
        "$directory"
        "$git_branch"
        "$git_commit"
        "$git_status"
        "$git_state"
        "$line_break"
        "$character"
      ];

      right_format = lib.concatStrings [
        "$localip"
        "$shlvl"
        "$singularity"
        "$kubernetes"
        "$vcsh"
        "$fossil_branch"
        "$pijul_channel"
        "$docker_context"
        "$package"
        "$c"
        "$cmake"
        "$cobol"
        "$daml"
        "$dart"
        "$deno"
        "$dotnet"
        "$elixir"
        "$elm"
        "$erlang"
        "$fennel"
        "$golang"
        "$guix_shell"
        "$haskell"
        "$haxe"
        "$helm"
        "$java"
        "$julia"
        "$kotlin"
        "$gradle"
        "$lua"
        "$nim"
        "$nodejs"
        "$ocaml"
        "$opa"
        "$perl"
        "$php"
        "$pulumi"
        "$purescript"
        "$python"
        "$raku"
        "$rlang"
        "$red"
        "$ruby"
        "$rust"
        "$scala"
        "$swift"
        "$terraform"
        "$vlang"
        "$vagrant"
        "$zig"
        "$buf"
        "$nix_shell"
        "$conda"
        "$meson"
        "$spack"
        "$memory_usage"
        "$aws"
        "$gcloud"
        "$openstack"
        "$azure"
        "$env_var"
        "$crystal"
        "$custom"
        "$sudo"
        "$cmd_duration"
        "$jobs"
        "$battery"
        "$time"
        "$status"
        "$os"
        "$container"
        "$shell"
        "\${custom.rojo}"
      ];

      character = {
        success_symbol = "[λ](white)";
        error_symbol = "[λ](red)";
      };

      username = {
        format = "[$user](blue)";
        show_always = true;
      };

      hostname = {
        format = "[@$hostname](blue) ";
        ssh_only = false;
      };

      directory = {
        read_only = " ";
        truncation_length = 2;
        truncation_symbol = "../";
        style = "dimmed italic";
      };

      git_branch = {
        format = "[\\($branch(:$remote_branch)\\)]($style)";
      };

      custom.rojo = {
        detect_extensions = ["project.json"];
        style = "bold red";
        symbol = " ";
        command = "rojo --version | cut -c 6-";
        format = "[$symbol($output )]($style)";
      };

      rust = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      aws = {
        symbol = "  ";
      };

      buf = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      c = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      conda = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      dart = {
        symbol = " ";
      };

      docker_context = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      elixir = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      elm = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      golang = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      guix_shell = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      haskell = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      haxe = {
        format = "[$symbol($version )]($style)";
        symbol = "⌘ ";
      };

      hg_branch = {
        symbol = " ";
      };

      java = {
        symbol = " ";
        format = "[$symbol($version )]($style)";
      };

      julia = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      lua = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      memory_usage = {
        symbol = " ";
      };

      meson = {
        format = "[$symbol($version )]($style)";
        symbol = "喝 ";
      };

      nim = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      nix_shell = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      nodejs = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      os.symbols = {
        Alpine = " ";
        Amazon = " ";
        Android = " ";
        Arch = " ";
        CentOS = " ";
        Debian = " ";
        DragonFly = " ";
        Emscripten = " ";
        EndeavourOS = " ";
        Fedora = " ";
        FreeBSD = " ";
        Garuda = "﯑ ";
        Gentoo = " ";
        HardenedBSD = "ﲊ ";
        Illumos = " ";
        Linux = " ";
        Macos = " ";
        Manjaro = " ";
        Mariner = " ";
        MidnightBSD = " ";
        Mint = " ";
        NetBSD = " ";
        NixOS = " ";
        OpenBSD = " ";
        openSUSE = " ";
        OracleLinux = " ";
        Pop = " ";
        Raspbian = " ";
        Redhat = " ";
        RedHatEnterprise = " ";
        Redox = " ";
        Solus = "ﴱ ";
        SUSE = " ";
        Ubuntu = " ";
        Unknown = " ";
        Windows = " ";
      };

      package = {
        format = "[$symbol$version ]($style)";
        symbol = " ";
      };

      python = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      rlang = {
        format = "[$symbol($version )]($style)";
        symbol = "ﳒ ";
      };

      ruby = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      scala = {
        format = "[$symbol($version )]($style)";
        symbol = " ";
      };

      spack = {
        format = "[$symbol($version )]($style)";
        symbol = "🅢 ";
      };
    };
  };
}
