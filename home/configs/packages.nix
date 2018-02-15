{ pkgs, ... }:
let
  unstable = import <nixos-unstable> {};
  gitwatch = pkgs.callPackage ../pkgs/gitwatch.nix { };
in {
  home.packages = with pkgs; [
    #steam
    apg
    unstable.arduino
    aria2
    aspellDicts.de
    aspellDicts.en
    atool
    autocutsel
    awscli
    bind.dnsutils
    blender
    borgbackup
    todo-txt-cli
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
    ffmpeg
    findutils
    firefox-bin
    flvstreamer
    fritzing
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
    unstable.ino
    iperf
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
    udiskie
    unrar
    unstable.ripgrep
    xsane
    unzip
    vagrant
    vlc
    xbrightness
    xorg.xbacklight
    xorg.xvinfo
    xpdf
    xsel
    youtube-dl
    yubioath-desktop
    zip
  ];
}
