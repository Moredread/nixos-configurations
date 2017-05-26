# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports =
    [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sr_mod" "rtsx_pci_sdmmc" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/d88cabd4-4c91-44b7-a1bd-a74f5696a3c3";
      fsType = "btrfs";
      options = [ "subvol=subvol/nixos,compress,autodefrag,ssd,discard" ];
    };

  fileSystems."/home/addy" =
    { device = "/dev/disk/by-uuid/d88cabd4-4c91-44b7-a1bd-a74f5696a3c3";
      fsType = "btrfs";
      options = [ "subvol=/home/addy,compress,autodefrag,ssd,discard" ];
    };

  boot.initrd.luks.devices."root".device = "/dev/disk/by-uuid/834fd809-35c2-4e86-911b-6fe68a6e79c3";
  boot.initrd.luks.devices."root".allowDiscards = true;

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/a336e280-9f33-4b4e-9899-48c3a82cdfee";
      fsType = "ext4";
      options = [ "discard" ];
    };

  swapDevices = [ ];

}
