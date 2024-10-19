{ config, pkgs, ... }:
{
  imports = [ ./alias.nix ];

  programs.bash = {
    enable = true;  
  };

  programs.fzf = {
    enable = true;
  };
  
  programs.eza = {
    enable = true;
  };


}