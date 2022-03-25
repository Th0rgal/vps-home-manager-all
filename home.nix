{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ python38 busybox neofetch gotop speedtest-cli rtorrent aria2 ];
}
