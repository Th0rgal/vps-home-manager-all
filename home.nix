{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ rtorrent aria2 neofetch gotop speedtest-cli ];
}
