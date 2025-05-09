{config, pkgs, ...}:{
  environment.systemPackages = with pkgs; [
    git
    vim
    emacs
    wget
    gcc
    librewolf
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
    amnezia-vpn
    qbittorrent
    brave
    thunderbird
    keepassxc
    gnupg
    anydesk 
    sops
    ungoogled-chromium
  ];
}
