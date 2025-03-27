{config, pkgs, ...}:{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;
    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      #Preferences = {
      #  "privacy.donottrackheader.enabled" = true;
      #  "privacy.fingerprintingProtection" = true;
      #  "privacy.resistFingerprinting" = true;
      #  "privacy.trackingprotection.emailtracking.enabled" = true;
      #  "privacy.trackingprotection.enabled" = true;
      #  "privacy.trackingprotection.fingerprinting.enabled" = true;
      #  "privacy.trackingprotection.socialtracking.enabled" = true;
      #};
      ExtensionSettings = {
        "jid1-ZAdIEUB7XOzOJw@jetpack" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/duckduckgo-for-firefox/latest.xpi";
          installation_mode = "force_installed";
        };
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
        "{290ce447-2abb-4d96-8384-7256dd4a1c43}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/{290ce447-2abb-4d96-8384-7256dd4a1c43}/latest.xpi";
          installation_mode = "force_installed";
        };
        "@panicbutton" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/@panicbutton/latest.xpi";
          installation_mode = "force_installed";
        };
        "dfyoutube@example.com" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/dfyoutube@example.com/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}