{ pkgs, ... }:
{
  home.packages = with pkgs; [
    #kicad
    apg
    aria2
    aspellDicts.de
    aspellDicts.en
    atool
    autocutsel
    bind.dnsutils
    binutils
    blueman
    borgbackup
    breeze-icons
    breeze-qt5
    cachix
    chromium
    daemontools
    dfeet
    direnv
    dmidecode
    docker
    docker_compose
    dos2unix
    dunst
    evince
    exfat-utils
    feh
    ffmpeg
    file
    findutils
    firefox-bin
    flvstreamer
    fuse_exfat
    gawk
    gdb
    gitAndTools.gitFull
    gitAndTools.hub
    gitwatch
    gnome3.dconf
    gnome3.dconf-editor
    gnugrep
    gnumake
    gnupg
    gnupg1
    gource
    i3lock
    jq
    keepassx2
    krusader
    linux-steam-integration
    mc
    mercurialFull
    minecraft
    mplayer
    mpv
    mumble
    neovim
    networkmanagerapplet
    nix-prefetch-scripts
    nixos-icons
    nmap
    nox
    p7zip
    pamixer
    paperkey
    pass
    pass-otp
    pasystray
    pavucontrol
    polkit_gnome
    posix_man_pages
    powertop
    python3Packages.mps-youtube
    qrencode
    qsyncthingtray
    ranger
    ripgrep
    rsync
    rxvt_unicode
    screen
    scrot
    shellcheck
    skype
    slic3r-prusa3d
    sloccount
    speedtest-cli
    spotify
    sshfs
    steam
    subversion
    syncthing
    taskwarrior
    telnet
    thunderbird
    todo-txt-cli
    unrar
    unzip
    vlc
    xbrightness
    xpdf
    xsel
    youtube-dl
    yubioath-desktop
    zip
    zotero
  ];
}
