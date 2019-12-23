{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [
    neofetch
    gotop
    speedtest-cli
  ];
}
