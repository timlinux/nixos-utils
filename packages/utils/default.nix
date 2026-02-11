{ pkgs, ... }:
let
  desktopItem = pkgs.makeDesktopItem {
    name = "nixos-utils";
    exec = "utils";
    icon = "nixos-utils";
    desktopName = "NixOS Utils";
    comment = "User-friendly interface for various NixOS management tasks";
    categories = [
      "System"
      "Utility"
    ];
    keywords = [
      "nixos"
      "system"
      "management"
      "utilities"
      "terminal"
    ];
    terminal = true;
    startupNotify = false;
  };

  runtimeInputs = with pkgs; [
    ntfy-sh # for sending notifications
    scrot # command line screenshot tool
    bash
    gum # UX for TUIs
    glow # For reading markdown in terminal
    skate # Distributed key/value store
    onefetch # Gives stats on this git repo
    neofetch # Gives stats on this system
    ipfetch # Gives info on your ISP
    cpufetch # Info about your CPU
    ramfetch # And your RAM
    starfetch # Tell you interesing info about a star cluster
    octofetch # Tell you about a github user e.g. octofetch timlinux
    sysbench # CPU Benchmarking utility
    fastfetch # System info summary
    git
    nmap
  ];
in
pkgs.stdenv.mkDerivation {
  pname = "utils";
  version = "1.0.0";

  src = ./.;

  nativeBuildInputs = [
    pkgs.makeWrapper
  ];

  installPhase = ''
    mkdir -p $out/bin
    mkdir -p $out/share/utils
    mkdir -p $out/share/applications
    mkdir -p $out/share/icons/hicolor/256x256/apps

    # Copy the main script
    cp utils.sh $out/bin/utils
    chmod +x $out/bin/utils

    # Copy the img folder and its contents
    cp -r img $out/share/utils/

    # Install desktop file
    cp ${desktopItem}/share/applications/* $out/share/applications/

    # Install icon (PNG should go in 256x256 directory, not scalable)
    cp img/icon.png $out/share/icons/hicolor/256x256/apps/nixos-utils.png

    # Wrap the script with runtime dependencies
    wrapProgram $out/bin/utils \
      --prefix PATH : ${pkgs.lib.makeBinPath runtimeInputs} \
      --set UTILS_SHARE_DIR $out/share/utils
  '';

  meta = with pkgs.lib; {
    description = "Bash script that provides a user-friendly interface for various NixOS management tasks";
    license = licenses.mit;
    platforms = platforms.linux;
  };
}
