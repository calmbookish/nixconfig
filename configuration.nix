{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/bluetooth.nix  
      ./modules/boot.nix  
      ./modules/displaymanager.nix
      ./modules/garbage.nix  
      ./modules/kdeconnect.nix  
      ./modules/keymap.nix  
      ./modules/langndate.nix  
      ./modules/librewolf.nix  
      ./modules/network.nix  
      ./modules/packeges.nix  
      ./modules/printer.nix  
      ./modules/sound.nix  
      ./modules/unfree.nix  
      ./modules/users.nix
    ];
  # Enable flakes support
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.auto-optimise-store = true;
  system.stateVersion = "24.11"; 

}
