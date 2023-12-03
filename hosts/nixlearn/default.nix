{ config, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/core.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/desktop.nix
  ];

  # UEFI Boot
  # boot.loader = {
    # efi.canTouchEfiVariables = true;
    # systemd-boot.enable = true;
  # };

  # BIOS Boot
  boot.loader.grub = {
    enable = true;
    device = "/dev/vda1";
  };

  networking = {
    hostName = "nixlearn";
    networkmanager.enable = true;
  };

  system.stateVersion = "23.11";
}
