{ config, pkgs, ... }:
{
  imports = [ ./alias.nix ];

  programs.bash = {
    enable = true;  
  };

  programs.fzf = {
    enable = true;
    colors = {
      bg = "#1e1e1e";
      "bg+" = "#1e1e1e";
      fg = "#d4d4d4";
      "fg+" = "#d4d4d4";
    };
  };

  programs.eza = {
    enable = true;
  };


}