{ config, pkgs, ... }:
{
  imports = [ ./alias.nix ];

  programs.bash = {
    enable = true;  
  };

}