{ config, lib, pkgs, ... }:

{
    imports =
    [
        ./kde.nix
        ./gnome.nix
        ./bspwm.nix
    ];

}
