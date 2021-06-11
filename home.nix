{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ aria2 neofetch gotop speedtest-cli ];
}
