{ pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
  gitwatch = pkgs.callPackage ../pkgs/gitwatch.nix { };
  slic3r-prusa-mine = pkgs.callPackage ../pkgs/slic3r-prusa3d.nix { };
in {
  home.packages = with pkgs; [
    #slic3r-prusa-mine
    #steam
    apg
    aria2
    aspellDicts.de
    aspellDicts.en
    atool
    autocutsel
    avrdude
    awscli
    bind.dnsutils
    blender
    borgbackup
    calibre
    daemontools
    dmidecode
    docker
    docker_compose
    dos2unix
    dropbox
    dunst
    electrum
    evince
    exfat-utils
    ffmpeg
    findutils
    firefox-bin
    flvstreamer
    fritzing
    fuse_exfat
    gimp
    gitAndTools.gitFull
    gitAndTools.gitSVN
    gitAndTools.hub
    gitFull
    gitwatch
    glxinfo
    gnupg
    gnupg1
    gource
    i3lock
    i3status
    idea.pycharm-professional
    inkscape
    iperf
    jetbrains.clion
    kate
    kdiff3
    keepassx2
    kget
    krename
    krusader
    libreoffice
    love
    mercurialFull
    minecraft
    mplayer
    mpv
    mumble
    neovim
    networkmanagerapplet
    nix-prefetch-scripts
    nixopsUnstable
    nmap
    nox
    p7zip
    paperkey
    pavucontrol
    polkit_gnome
    posix_man_pages
    powertop
    profanity
    python36Packages.virtualenv
    python3Packages.mps-youtube
    qrencode
    ranger
    rclone
    rsync
    rxvt_unicode
    screen
    scrot
    skype
    sloccount
    socat
    speedtest-cli
    spotify
    subversion
    syncthing
    syncthing-inotify
    taskwarrior
    telnet
    thunderbird
    todo-txt-cli
    todo-txt-cli
    udiskie
    unrar
    unstable.arduino
    unstable.ino
    unstable.ripgrep
    unstable.wineFull
    unstable.winetricks
    unzip
    vagrant
    vlc
    xbrightness
    xorg.xbacklight
    xorg.xvinfo
    xpdf
    xsane
    xsel
    youtube-dl
    yubioath-desktop
    zip
  ];
}
