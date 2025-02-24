{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "daniil";
  home.homeDirectory = "/home/daniil";

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    htop
    neofetch
    vscodium
    libreoffice-qt6-fresh     
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";
  programs.git = {
    enable = true;
    userName = "Daniil Prokofev";
    userEmail = "danieldzen@yandex.ru";
  };
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}