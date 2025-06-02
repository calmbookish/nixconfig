{ config, pkgs, ... }:

{
  imports = [
    ./modules/git.nix
  ];
  home.username = "daniil";
  home.homeDirectory = "/home/daniil";
  home.packages = with pkgs; [
    htop
    neofetch
    vscodium.fhs
    libreoffice-qt6-fresh     
  ];
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
}
