{ config, pkgs, lib, ... }:

{
  imports =
    [
      ../configs/base-desktop.nix
      ../configs/users-and-groups.nix
      ../hardware-configuration.nix
    ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.memtest86.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.extraEntries = ''
      menuentry 'Arch Linux' {
        configfile (hd0,1)/boot/grub/grub.cfg
        }
  '';

  networking.hostName = "grable";

  i18n.consoleKeyMap = "de";



  services = {
    avahi.publish.addresses = lib.mkDefault false;
    
    xserver.videoDrivers = [ "intel" ];
    xserver.layout = "de";
    
    xserver.libinput = {
      enable = true;
    };

    tlp.enable = true;
  };
}