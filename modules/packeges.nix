{config, pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    git
    vim
    emacs
    wget
    gcc
    libsForQt5.skanpage
    epson-escpr2
    ripgrep
    findutils
    fd
    emacsPackages.nerd-icons
    gdb
    clang-tools
    bear
    gnumake
    python314
    unzip
    vscode-extensions.ms-vscode.cpptools
    lldb
    qbittorrent
    thunderbird
    keepassxc
    gnupg 
    sops
    alacritty
    qutebrowser
    feh
    mupdf
    ranger
    redshift
    mutt
    picom
    
  ];
}
