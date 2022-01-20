{ config, pkgs, ... }:

{
  imports =
    [ 
      ./bootloader.nix
      ./hardware-configuration.nix
      ./networking.nix
      ./nur.nix
      ./packages.nix
      ./users.nix
      ./xorg.nix
      ./kernel.nix
      ./programs/pipewire.nix
      ./programs/neovim.nix
      ./programs/zsh.nix
      ./programs/firejail.nix
    ];

   nixpkgs.config.allowUnfree = true;
   system.stateVersion = "21.11"; # Did you read the comment?
   system.copySystemConfiguration = true;
   time.timeZone = "Asia/Jakarta";
   security.rtkit.enable = true;

}

