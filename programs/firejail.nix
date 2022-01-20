{ config, pkgs, lib, ... }:

{
 programs.firejail = {
  enable = true;
  wrappedBinaries = {
   spotify = {
    executable = "${lib.getBin pkgs.spotify}/bin/spotify";
   };
  };
 };
}
