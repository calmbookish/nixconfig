{ pkgs, inputs, config, ... }:

{
  imports =
    [
      inputs.sops-nix.nixosModules.sops
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
      ./modules/syncthing.nix
      ./modules/bash.nix
    ];
  # Enable flakes support
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.settings.auto-optimise-store = true;
  sops.defaultSopsFile = ./secrets/secrets.yaml;
  sops.defaultSopsFormat = "yaml";
  sops.age.keyFile = "/home/daniil/.config/sops/age/keys.txt";
  system.stateVersion = "24.11"; 

}
