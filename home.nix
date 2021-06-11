{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ busybox neofetch gotop speedtest-cli rtorrent aria2 ];
}
