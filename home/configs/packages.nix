{ pkgs, ... }:
{
  home.packages = with pkgs; [
    alacritty
    alot
    apg
    appimage-run
    arandr
    aria2
    aspellDicts.de
    aspellDicts.en
    atool
    autocutsel
    bind.dnsutils
    binutils
    blender
    blueman
    borgbackup
    breeze-icons
    breeze-qt5
    cachix
    calibre
    crawl
    crawlTiles
    csvkit
    daemontools
    darktable
    dfeet
    docker
    docker_compose
    dos2unix
    dpkg
    dunst
    entr
    evince
    exfat-utils
    fd
    feh
    ffmpeg
    file
    findutils
    firefox-bin
    flvstreamer
    fuse_exfat
    fzf
    gawk
    gdb
    gitAndTools.gitFull
    gitAndTools.hub
    gitAndTools.tig
    glib
    gnome3.dconf
    gnome3.dconf-editor
    gnugrep
    gnumake
    gnupg
    gnupg1
    gocryptfs
    gphoto2
    graphviz
    gsettings-qt
    hledger
    hledger-ui
    hledger-web
    i3lock
    inetutils
    jq
    keepassx2
    krusader
    ledger
    libreoffice
    libsmbios
    mc
    mercurialFull
    meshlab
    minecraft
    mkpasswd
    mpv
    msmtp
    msr-tools
    mumble
    mupdf
    networkmanagerapplet
    nix-du
    nix-lsp
    nix-prefetch-scripts
    nix-universal-prefetch
    nixos-icons
    nmap
    nox
    nur.repos.mic92.inxi
    nur.repos.moredread.implicitcad
    nur.repos.moredread.nix-search
    p7zip
    pamixer
    paperkey
    pass-custom
    pasystray
    pavucontrol
    polkit_gnome
    posix_man_pages
    powertop
    python3Packages.mps-youtube
    python3Packages.python-language-server
    pywal
    qrencode
    qsyncthingtray
    ranger
    rclone
    renoise
    ripgrep
    rsync
    s-tui
    screen
    scrot
    shellcheck
    skype
    sloccount
    speedtest-cli
    spotify
    sshfs
    steam
    subversion
    syncthing
    tdesktop
    thunderbird
    todo-txt-cli
    travis
    unrar
    unstable.prusa-slicer
    unstable.prusa-slicer
    unzip
    vimPlugins.fzf-vim
    vlc
    w3m
    wirelesstools
    xbrightness
    xcwd
    xorg.xev
    xpdf
    xsel
    you-get
    youtube-dl
    yubioath-desktop
    zip
  ];
}
