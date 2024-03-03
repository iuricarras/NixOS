{ config, lib, pkgs, ... }:

{
  services.xserver = {
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };
  environment.systemPackages = with pkgs; [
    gnome.gnome-tweaks
    gnomeExtensions.appindicator
  ];
}
    