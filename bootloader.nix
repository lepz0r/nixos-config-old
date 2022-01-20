{ config, pkgs, ... }:

{
 boot = {
  loader = {
   efi.canTouchEfiVariables = false;
    grub = {
      enable = true;
      version = 2;
      device = "nodev";
      efiSupport = true;
      enableCryptodisk = true;
    };
  };
 };
}
