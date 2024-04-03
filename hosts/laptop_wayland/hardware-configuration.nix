# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ahci" "nvme" "usb_storage" "sd_mod" "rtsx_pci_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    {
      device = "/dev/disk/by-uuid/64388077-56dd-44f8-b0bd-e1d8140cc00b";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    {
      device = "/dev/disk/by-uuid/9F24-043F";
      fsType = "vfat";
    };

  fileSystems."/mnt/media_m" =
    {
      device = "/dev/disk/by-uuid/a8be5171-7de0-4549-b4f4-0987f625e237";
      fsType = "ext4";
    };

  fileSystems."/mnt/study" =
    {
      device = "/dev/disk/by-uuid/90c21674-dd82-4cfb-af81-aaec5c4d9dc1";
      fsType = "ext4";
    };

  fileSystems."/mnt/downloads" =
    {
      device = "/dev/disk/by-uuid/683474f3-1756-424f-8125-c86996f31ed2";
      fsType = "ext4";
    };

  swapDevices =
    [{ device = "/dev/disk/by-uuid/2b752539-89f4-41bb-bf05-a8ae1c437922"; }];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp2s0f1.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp3s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
