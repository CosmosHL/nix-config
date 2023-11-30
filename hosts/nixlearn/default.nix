{ config, pkgs, ... }:
{
  imports = [./hardware-configuration.nix];

  boot.loader = {
    efi.canTouchEfiVariables = true;
    systemd-boot.enable = true;
  };

  networking = {
    hostName = "nixlearn";
    networkmanager.enable = true;
  };

  system.stateVersion = "23.11";
}
