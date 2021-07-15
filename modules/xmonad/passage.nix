{ config, lib, pkgs, ... }: {

  imports = [
    ../home-manager/picom
    ../home-manager/rofi
    ../home-manager/dunst
    ../home-manager/xresources
    ../home-manager/xsession
  ];

  xsession.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    config = ./xmonad.hs;
    libFiles = {
      "Theme.hs" = ./lib/Theme/Theme.hs;
      "Xresources.hs" = ./lib/Theme/Xresources.hs;
    };

    extraPackages = haskellPackages:
      with haskellPackages; [
        dbus
        monad-logger
        greenclip
      ];
  };

}
