{ config, lib, pkgs, ... }:

{
sops = {
  secrets = {
    cert.owner = "daniil";
    key.owner = "daniil";
  };
};
services.syncthing = {
  enable = true;
  key = "/run/secrets/key";
  cert = "/run/secrets/cert";
  user = "daniil";
  dataDir = "/home/daniil";
  overrideDevices = true;
  overrideFolders = true;
  settings = {
    devices = {
      "phone" = { id = "CPV5KZ2-KE7YDRT-AI6IGY7-LUJSWDO-JJMSE5L-G3HANPM-IEBHQ5Q-JXT2FAS"; };
    };
    folders = {
      "Org" = {
        path = "/home/daniil/org";
        devices = [ "phone" ];
      };
    };
  };
  };
}