{ config, pkgs, lib, ... }:

let
  nur-no-pkgs = import /home/addy/nur/default.nix {};
in {
  imports =
    [
      ../configs/base.nix
      #../configs/wireguard.nix
      #../configs/emby.nix
      #../configs/unifi.nix
      #../configs/sabnzbd.nix
      ../configs/users-and-groups.nix
      ../configs/intel-vaapi.nix
      ./hardware-grable.nix
      nur-no-pkgs.modules.throttled
    ];


  # Use the GRUB 2 boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.extraModulePackages = [ config.boot.kernelPackages.wireguard ];
  environment.systemPackages = [ pkgs.wireguard ];

  networking.hostName = "grable";
  networking.hostId = "1a9f9478";

  powerManagement.powertop.enable = true;

  nix = {
    buildCores = 8;
    maxJobs = 8;

    buildMachines = [
      {
        hostName = "minuteman";
        maxJobs = 2;
        sshKey = "/root/.ssh/id_ed25519";
        sshUser = "addy";
        system = "x86_64-linux";
        supportedFeatures = [ "big-parallel" "kvm" "nixos-test" ];
      }
    ];
  };


  systemd.timers.cpu-throttling.enable = lib.mkForce false;

  services = {
    throttled.enable = true;
    # Start syncthing via QSyncthingTray
    syncthing.enable = lib.mkForce false;
    thermald.enable = lib.mkForce false;
    tlp.enable = lib.mkForce false;

    xserver = {
      videoDrivers = [ "intel" ];
      deviceSection = ''
        Option "DRI" "3"
        Option "AccelMethod" "sna"
      '';
      useGlamor = true;
      layout = "en_US";
    };
  };
}
