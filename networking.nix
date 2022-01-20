{ config, ... }:
{
 networking = {
   hostName = "nixos"; # Define your hostname.
   useDHCP = false;
   interfaces.enp2s0.useDHCP = true;
 };
}
