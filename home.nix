{ config, pkgs, ... }:

{

  imports = [
    ./shell/defaults.nix          # BASH Shell
    ./fonts/fonts.nix             # NERDFONTS
    ./cli/default.nix
    # ./digitalgarden/default.nix   # Personal MARKDOWN notes/digitalgarden
    # ./nixvim/default.nix
  ];

  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "jnkk";
  home.homeDirectory = "/home/jnkk";

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = with pkgs; [
    # # Adds the 'hello' command to your environment. It prints a friendly
    # # "Hello, world!" when run.
    vscodium
    xfce.xfce4-cpugraph-plugin
    # xfce.xfce4-docklike-plugin
    xfce.xfce4-genmon-plugin
    xfce.xfce4-pulseaudio-plugin
    xfce.xfce4-settings
    xfce.xfce4-whiskermenu-plugin
    lazygit fd bat ripgrep
    nodejs_22
	    

    # # It is sometimes useful to fine-tune packages, for example, by applying
    # # overrides. You can do that directly here, just don't forget the
    # # parentheses. Maybe you want to install Nerd Fonts with a limited number of
    # # fonts?
    # (pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
    # command above does not work. Search for nixOS fonts enable



    # # You can also create simple shell scripts directly inside your
    # # configuration. For example, this adds a command 'my-hello' to your
    # # environment:
    # (pkgs.writeShellScriptBin "my-hello" ''
    #   echo "Hello, ${config.home.username}!"
    # '')
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  # Home Manager can also manage your environment variables through
  # 'home.sessionVariables'. These will be explicitly sourced when using a
  # shell provided by Home Manager. If you don't want to manage your shell
  # through Home Manager then you have to manually source 'hm-session-vars.sh'
  # located at either
  #
  #  ~/.nix-profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  ~/.local/state/nix/profiles/profile/etc/profile.d/hm-session-vars.sh
  #
  # or
  #
  #  /etc/profiles/per-user/jnkk/etc/profile.d/hm-session-vars.sh
  #
  home.sessionVariables = {
    # EDITOR = "emacs";
  };


  programs.git = {
    enable = true;
    userName = "Arian Reza";
    userEmail = "arian.reza.setiawan@gmail.com";
    extraConfig.init.defaultBranch = "main";
  };
  



  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
