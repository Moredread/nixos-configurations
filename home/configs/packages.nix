{ pkgs, ... }:
{
  home.packages = with pkgs; [
    afew
    alot
    apg
    arduino
    aria2
    aspellDicts.de
    aspellDicts.en
    atool
    autocutsel
    avrdude
    awscli
    bind.dnsutils
    binutils
    blender
    borgbackup
    calibre
    chromium
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
    feh
    ffmpeg
    findutils
    firefox-bin
    flvstreamer
    freecad
    fritzing
    fuse_exfat
    gimp
    gitAndTools.gitFull
    gitAndTools.gitSVN
    gitAndTools.hub
    gitwatch
    glxinfo
    gnome3.dconf
    gnome3.dconf-editor
    gnumake
    gnupg
    gnupg1
    google-chrome
    gource
    httpie
    i3lock
    i3status
    idea.pycharm-professional
    inkscape
    iperf
    isync
    isync
    jetbrains.clion
    jq
    kate
    kdiff3
    keepassx2
    kget
    krename
    krusader
    libreoffice
    linux-steam-integration
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
    notmuch
    nox
    offlineimap
    p7zip
    pamixer
    paperkey
    paraview
    pass
    pass-otp
    pasystray
    pavucontrol
    polkit_gnome
    posix_man_pages
    powertop
    profanity
    python36Packages.virtualenv
    python3Packages.mps-youtube
    qrencode
    qsyncthingtray
    ranger
    rclone
    ripgrep
    rsync
    rxvt_unicode
    screen
    scrot
    shellcheck
    skype
    slic3r-prusa3d
    sloccount
    socat
    speedtest-cli
    spotify
    steam
    subversion
    syncthing
    taskwarrior
    telnet
    thunderbird
    todo-txt-cli
    udiskie
    unrar
    unzip
    vagrant
    vlc
    wine
    winetricks
    xbrightness
    xorg.xbacklight
    xorg.xev
    xorg.xvinfo
    xpdf
    xsane
    xsel
    youtube-dl
    yubioath-desktop
    zip
    zotero
  ];
}
