{ config, pkgs, ... }:

{
  programs.home-manager.enable = true;
  home.packages = with pkgs; [ aria neofetch gotop speedtest-cli ];

  zsh = {
    enable = true;
    initExtraFirst = ''
      [ ! -d "$HOME/.zsh/fsh/" ] && mkdir $HOME/.zsh/fsh/
      export FAST_WORK_DIR=$HOME/.zsh/fsh/;
    '';
    plugins = [
      {
        name = "zsh-autosuggestions";
        src = pkgs.fetchFromGitHub {
          owner = "zsh-users";
          repo = "zsh-autosuggestions";
          rev = "v0.6.4";
          sha256 = "0h52p2waggzfshvy1wvhj4hf06fmzd44bv6j18k3l9rcx6aixzn6";
        };
      }
      {
        name = "fast-syntax-highlighting";
        src = pkgs.fetchFromGitHub {
          owner = "zdharma";
          repo = "fast-syntax-highlighting";
          rev = "v1.55";
          sha256 = "0h7f27gz586xxw7cc0wyiv3bx0x3qih2wwh05ad85bh2h834ar8d";
        };
      }
    ];
  };
}
