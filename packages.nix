{ config, pkgs, ... }:

{
 environment = {
  systemPackages = with pkgs; [
   wget
   neofetch
   kitty
   polybarFull
   hsetroot
   rofi
   picom-next
   starship
   psmisc
   pure-prompt
   htop
   dunst
   alsaUtils
   pavucontrol
   git
   yarn
   nodejs
   rnix-lsp
   ccls
   ungoogled-chromium
   xorg.xdpyinfo
   nur.repos.wolfangaukang.librewolf
   lxappearance
   arc-icon-theme
   arc-theme
   cryptsetup
   f2fs-tools
   bitwarden
   cozette
   iotop
   rxvt-unicode-unwrapped
   haskellPackages.xmonad_0_17_0
   ghc
   feh
   playerctl
   pulseaudio
   xclip
   xsel
   w3m-full
  ];
  defaultPackages = with pkgs; [
   perl
   rsync
   strace
  ];
 }; 
 fonts = {
  fonts = with pkgs; [
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts
    dina-font
    proggyfonts
    powerline-symbols 
    font-awesome
    nerdfonts
    cozette
  ];
  fontDir.enable = true;
 };
}
