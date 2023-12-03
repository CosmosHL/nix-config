{ pkgs, ... }:
{
  imports = [];

  home = {
    username = "ozoku";
    homeDirectory = "/home/ozoku";

    packages = with pkgs; [
      neofetch
    ];

    stateVersion = "23.11";
  };

  programs.home-manager.enable = true;
}
