# Steps I took after installing NixOS

## first boot, activate stuff in configuration.nix
`git wget curl micro btop vscodium`

## copy configuration and hardware to dotfiles folder

## change permissions -> `chmod jnkk:users <files>` to configuration and hardware

## enable git

```nix
programs.git = {
    enable = true;
    userName = "<yourname>";
    userEmail = "youremail";
    extraConfig.init.defaultBranch = "main";
  };
```

## enabling and adding fonts

```nix
fonts.fontconfig.enable = true;
  home.packages = [
    # Enabling and downloading fonts
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })

  ];
```


TODOs:
1. audio plugins/controls is not there
2. setting git


> [!NOTE]
> nix flake update



xfce.xfce4-cpugraph-plugin
xfce.xfce4-docklike-plugin
xfce.xfce4-genmon-plugin
xfce.xfce4-pulseaudio-plugin
xfce.xfce4-settings
xfce.xfce4-whiskermenu-plugin
    