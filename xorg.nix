{ config, ... }:

{
 services.xserver = {
   # Enable the X11 windowing system.
   enable = true;

   # Configure keymap in X11
   # services.xserver.layout = "us";
   # services.xserver.xkbOptions = "eurosign:e";
   
   videoDrivers = [ "nvidia" ];
   windowManager = {
    bspwm.enable = true;
   };
   #config = ''
   # Section "InputClass"
   #  Identifier "My Mouse"
   #  Driver "libinput"
   #  MatchIsPointer "yes"
   #  Option "AccelProfile" "flat"
   #  Option "AccelSpeed" "0.05"
   # EndSection
   #'';
 };
}
