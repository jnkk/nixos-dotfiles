# Steps I took after installing NixOS

> [!WARNING]
> NIXOS is really hard

> [!NOTE]  
> `nix flake update` is for updating the flake lock file
> `home-manager switch --flake .` is for switching files inside the home manager for user
> `nixos-rebuild switch --flake .` is for SYSTEMWIDE change
> sound plugin works on KDE and LXQT 

## First boot, activate stuff in configuration.nix

`git wget curl micro btop vscodium`

## copy configuration and hardware to dotfiles folder

```bash
cd .dotfiles
sudo cp /etc/nixos/*.nix .
```

## change permissions -> `chmod jnkk:users <file>` to configuration and hardware

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
1. audio plugins/controls in xfce is not available, but available in KDE and LXQT

xfce.xfce4-cpugraph-plugin
xfce.xfce4-docklike-plugin
xfce.xfce4-genmon-plugin
xfce.xfce4-pulseaudio-plugin
xfce.xfce4-settings
xfce.xfce4-whiskermenu-plugin
