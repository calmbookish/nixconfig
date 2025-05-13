{config, pkgs, ...}:{
  users.users.daniil = {
    isNormalUser = true;
    description = "daniil";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      kdePackages.kate
    #  thunderbird
    ];
  };
}