{ config, pkgs, ... }:

{
 boot = {
  initrd.luks.devices = {
   nixos-luks = {
    device = "/dev/disk/by-uuid/0a758070-14e6-4039-8884-6ae1aac69ec2";
   };
  };
  kernelPackages = pkgs.linuxKernel.packages.linux_xanmod;
 };
}
