{
  description = "Kartoza NixOS Utilities";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
  };

  outputs = {
    self,
    nixpkgs,
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
        allowInsecure = true;
        permittedInsecurePackages = [
          # Add other insecure packages as needed
        ];
      };
    };
  in {
    ######################################################
    ##
    ## Package Definitions
    ##
    ######################################################

    # Default package - utilities to help you prepare for setting up a new machine.
    #
    # Run with:
    # "nix run"
    # or
    # nix run github:timlinux/nix-config
    # or
    # nix run github:timlinux/nix-config#default
    #
    # to include in a config do:
    #
    # { pkgs, ... }: {
    #   nixpkgs.overlays = [(import ../../packages)];
    #   environment.systemPackages = with pkgs; [
    #     utils
    #   ];
    # }

    packages.x86_64-linux = rec {
      # recursive to default alias can refer to utils
      utils = pkgs.callPackage ./packages/utils {};
      default = utils;
    };

    ######################################################
    ##
    ## Apps - Define what happens when you run "nix run"
    ##
    ######################################################

    apps.x86_64-linux.default = {
      type = "app";
      program = "${self.packages.x86_64-linux.utils}/bin/utils";
    };

    ######################################################
    ##
    ## Development Shells
    ##
    ######################################################

    devShells.x86_64-linux.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        vscode
        jq
        git
        gum # UX for TUIs
        skate # Distributed key/value store
        mods # AI in your shell
        ntfy-sh # Send notifications to your mobile
        gource # Software version control visualization
        marp-cli # Markdown presentation tool
        glow # terminal markdown viewer
        onefetch
        neofetch
        ipfetch
        cpufetch
        ramfetch
        starfetch
        octofetch
        ntfy-sh
        mesa-demos
        pciutils
        fwupd
        netdiscover
      ];

      shellHook = ''
        echo "Kartoza NixOS"
        echo "_________________________________________________________"
        echo "Command : Description"
        echo "_________________________________________________________"
        echo "🚀 nix run          : Open the management utilities menu"
        echo "👀 nix flake show . : Show all the flake details"
        echo "🔍 nix flake update  : Update the flake"
        echo "🩻 nix flake check   : Check the flake"
        echo "🧪 nix flake test    : Run the tests for this flake"
        echo "🔧 nix build .#packages.x86_64-linux.iso : Build the ISO image"

        echo "🆚 ./vscode         : Open VSCode ready to work on this flake"
        echo " sudo NIXPKGS_ALLOW_INSECURE=1 NIXPKGS_ALLOW_UNFREE=1 nixos-rebuild switch --show-trace --impure --flake . : Update your system"
        echo "_________________________________________________________"
        echo "Tim Sutton, 2024   https://github.com/timlinux/nix-config"
      '';
    };
  };
}
