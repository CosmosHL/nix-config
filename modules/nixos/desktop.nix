{ config, lib, pkgs, ... }:
{
  environment.shells = with pkgs; [
    bash
    fish
    nushell
  ];

  programs.fish.enable = true;

  users.defaultUserShell = pkgs.fish;

  environment.systemPackages = with pkgs; [
    psmisc
    mako
    polkit-kde-agent
    (eww.override {
      withWayland = true;
    })
    hyprpaper
    wofi
  ];

  security.rtkit.enable = true;

  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
      wireplumber.enable = true;
    };

    flatpak.enable = true;
  };

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-hyprland
    ];
  };

  fonts = {
    enableDefaultPackages = false;
    fontDir.enable = true;

    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk
      noto-fonts-emoji

      (nerdfonts.override {
        fonts = ["FiraCode"];
      })
    ];

    fontconfig.defaultFonts = {
      serif = ["Noto Serif" "Noto Color Emoji"];
      sansSerif = ["Noto Sans" "Noto Color Emoji"];
      monospace = ["FiraCode Nerd Font" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };

  # Elmeri
  # services.xserver = {
    # enable = true;
    # displayManager.sddm.enable = true;
    # desktopManager.plasma5.enable = true;
  # };

  # Robin
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };

}
