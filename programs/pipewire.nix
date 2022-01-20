{ config, pkgs, ... }:

{
 services.pipewire = {
   enable = true;
   alsa.enable = true;
   alsa.support32Bit = true;
   pulse.enable = true;

   config.pipewire = {
    "context.properties" = {
     "link.max-buffers" = 16; # version < 3 clients can't handle more than this
     "default.clock.rate" = 384000;
     "default.clock.quantum" = 1024;
     "default.clock.min-quantum" = 32;
     "default.clock.max-quantum" = 4096;
    };
    "context.modules" = [
      {
        name = "libpipewire-module-rtkit";
        args = {
          "nice.level" = -15;
          "rt.prio" = 88;
          "rt.time.soft" = 200000;
          "rt.time.hard" = 200000;
        };
        flags = [ "ifexists" "nofail" ];
      }
      { name = "libpipewire-module-protocol-native"; }
      { name = "libpipewire-module-profiler"; }
      { name = "libpipewire-module-metadata"; }
      { name = "libpipewire-module-spa-device-factory"; }
      { name = "libpipewire-module-spa-node-factory"; }
      { name = "libpipewire-module-client-node"; }
      { name = "libpipewire-module-client-device"; }
      {
        name = "libpipewire-module-portal";
        flags = [ "ifexists" "nofail" ];
      }
      {
        name = "libpipewire-module-access";
        args = {};
      }
      { name = "libpipewire-module-adapter"; }
      { name = "libpipewire-module-link-factory"; }
      { name = "libpipewire-module-session-manager"; }
    ];
   }; 

   #config.pipewire-pulse = {
   #};

   config.client = {
    "stream.properties" = {
     "node.latency"          = "512/48000";
     "resample.quality"      = 10;
    };
   };

 };
}
