{ pkgs, ... }:
{
  imports = [
    #configs/lorri.nix
    configs/packages.nix
    configs/programs.nix
    configs/zsh.nix
    configs/wm.nix
    configs/overrides.nix
  ];

  home.keyboard.layout = "us";
  home.keyboard.options = [ "compose:rctrl" "caps:none" ];
  home.language = {
    base = "en_US.utf8";
    paper = "de_DE.utf8";
    monetary = "de_DE.utf8";
    address = "de_DE.utf8";
  };

  systemd.user.startServices = true;
  #services.syncthing.tray = true;
  services.lorri.enable = true;

  home.extraOutputsToInstall = [ "debug" "doc" "info" "devdoc" ];
  #manual.html.enable = true;

  home.file.dotfiles = {
    source = ./dotfiles;
    target = ".";
    recursive = true;
  };
}
