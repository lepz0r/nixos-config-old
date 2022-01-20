{ config, pkgs, ... }:

{
programs.neovim = {
 enable=true;
 defaultEditor=true;
 viAlias=true;
 vimAlias=true;
 configure={
  customRC = ''
   set mouse=a
   set clipboard=unnamedplus
   source ~/.config/nvim/init.vim
  '';
 };
};
}
