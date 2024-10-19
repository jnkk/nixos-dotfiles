{ config, pkgs, ... }:
{
  
  fonts.fontconfig.enable = true;
  home.packages = [
    # Enabling and downloading fonts
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" "JetBrainsMono"]; })

  ];

}