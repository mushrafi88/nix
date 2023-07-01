{ config, lib, pkgs, user, impermanence, ... }:

{
  imports =
    [ (import ../../modules/desktop/hyprland/home.nix) ] ++
    [ (import ../../modules/scripts) ] ++
    (import ../../modules/shell) ++
    (import ../../modules/editors) ++
    (import ../../modules/programs) ++
    (import ../../modules/theme/catppuccin-dark/wayland);

  home = {
    username = "venerable_white";
    homeDirectory = "/home/venerable_white";
  };
  programs = {
    home-manager.enable = true;
  };

  home.stateVersion = "23.11";
}
