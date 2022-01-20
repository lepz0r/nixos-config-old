{ config, pkgs, ... }:
{
 users = {
 defaultUserShell = pkgs.zsh;
  users = {
   cincinmasukmangkok= {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
   };
  };
 };
}
