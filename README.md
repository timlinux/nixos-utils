# ❄️ NixOS Utils [![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


> ## 👋 Welcome to NixOS Utils!
>
> **This repository hosts a collection of utilities for managing NixOS systems:**  
> 🔧 **Bash script that provides a user-friendly interface for various NixOS management tasks**
>
> Here you'll find everything you need to **build, install, and use** these NixOS utilities.
>
> ### ⚠️ About this Project
>
> **This repository provides utilities to help you manage and set up your NixOS system.**
>
> The utilities include system information tools, benchmarking utilities, and management scripts to make working with NixOS more convenient and user-friendly.


<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> 📖 Table of Contents</h2>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#-project-overview"> 🚀 Project Overview </a></li>
    <li><a href="#-qa-status"> 🚥 QA Status </a></li>
    <li><a href="#-license"> 📜 License </a></li>
    <li><a href="#-folder-structure"> 📂 Folder Structure </a></li>
    <li><a href="#-installation-and-usage"> 🔧 Installation and Usage </a></li>
    <li><a href="#-utilities-overview"> 🛠️ Utilities Overview </a></li>
    <li><a href="#-using-the-nix-shell"> 🧊 Using the Nix Shell </a></li>
    <li><a href="#-adding-to-your-own-flake"> 📦 Adding to Your Own Flake </a></li>
    <li><a href="#-contributing"> ✨ Contributing </a></li>
    <li><a href="#-have-questions"> 🙋 Have Questions? </a></li>
    <li><a href="#-contributors"> 🧑‍💻👩‍💻 Contributors </a></li>
    <li><a href="#-adding-to-your-own-flake"> 📦 Adding to Your Own Flake </a></li>
  </ol>
</details>


## 🚀 Project Overview

NixOS Utils is a comprehensive toolkit designed to simplify NixOS system management and provide useful utilities for both new and experienced NixOS users. The project includes:

- 🖥️ **System Information Tools**: Display comprehensive system stats including CPU, RAM, network, and more
- 🏃‍♂️ **Benchmarking Utilities**: Test your system performance with built-in benchmarking tools
- 🔧 **Management Scripts**: Streamlined tools for common NixOS administrative tasks
- 🎨 **Beautiful TUI Interface**: Powered by Gum for an intuitive terminal user interface
- 📊 **Distributed Key/Value Store**: Share data across your NixOS systems using Skate


## 🚥 QA Status

### 🪪 Badges
| Badge | Description |
|-------|-------------|
| ![License](https://img.shields.io/github/license/timlinux/nixos-utils.svg) | Repository license |
| ![](https://img.shields.io/github/issues/timlinux/nixos-utils.svg) | Open issues count |
| ![](https://img.shields.io/github/issues-closed/timlinux/nixos-utils.svg) | Closed issues count |
| ![](https://img.shields.io/github/issues-pr/timlinux/nixos-utils.svg) | Open pull requests count |
| ![](https://img.shields.io/github/issues-pr-closed/timlinux/nixos-utils.svg) | Closed pull requests count |

### ⭐️ Project Stars

![Stars](https://starchart.cc/timlinux/nixos-utils.svg)


## 📜 License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.


## 📂 Folder Structure

```plaintext
nixos-utils/
  ├── ❄️  flake.nix         # Main Nix flake configuration
  ├── 🔒  flake.lock        # Lock file for reproducible builds
  ├── 📦  packages/         # Package definitions
  │   ├── ⚙️  default.nix   # Default package configuration
  │   └── 🛠️  utils/        # Utilities package
  │       ├── ⚙️  default.nix # Utils package definition
  │       ├── 📋  README.md   # Utils documentation
  │       └── 🐚  utils.sh    # Main utilities script (1100+ lines)
  ├── 📜  LICENSE           # MIT license file
  ├── 📖  README.md         # This file
  ├── 📝  vscode.log        # VSCode configuration log
  └── 💻  vscode.sh         # VSCode setup script with extensions
```


## 🔧 Installation and Usage

### 🏠 Local Installation

Clone the repository and run locally:

```bash
git clone https://github.com/timlinux/nixos-utils.git
cd nixos-utils
nix run
```

### 🌐 Remote Usage

Run directly from GitHub without cloning:

```bash
# Run the default utilities
nix run github:timlinux/nixos-utils

# Or specifically run the utils package
nix run github:timlinux/nixos-utils#utils
```

### 🔧 Development Environment

Enter the development shell with all dependencies:

```bash
nix develop
```

This will provide you with access to all the tools including VSCode, git, gum, and various system utilities.


## 🛠️ Utilities Overview

The main `utils.sh` script provides a comprehensive set of tools organized through an intuitive menu system:

### 📊 System Information Tools
- **neofetch**: Display beautiful system information
- **fastfetch**: Quick system stats summary  
- **cpufetch**: Detailed CPU information
- **ramfetch**: Memory information and usage
- **ipfetch**: Network and ISP information
- **octofetch**: GitHub user information lookup

### 🏃‍♂️ Performance Tools
- **sysbench**: CPU benchmarking utility
- **System monitoring**: Real-time performance metrics

### 🔧 Management Utilities
- **Skate integration**: Distributed key/value store for sharing data across systems
- **Notification system**: Send alerts to mobile devices via ntfy-sh
- **Screenshot tools**: Command-line screenshot capabilities with scrot
- **Network tools**: Network scanning and analysis with nmap

### 🎨 User Interface
- **Gum-powered TUI**: Beautiful terminal user interface
- **Markdown rendering**: Read documentation with glow
- **Git integration**: Repository statistics with onefetch


## 🧊 Using the Nix Shell

### Development Environment

The flake provides a comprehensive development environment:

```bash
# Enter the development shell
nix develop

# Available commands in the shell:
🚀 nix run           # Open the management utilities menu
👀 nix flake show .  # Show all the flake details  
🔍 nix flake update  # Update the flake
🩻 nix flake check   # Check the flake
🆚 ./vscode          # Open VSCode ready to work on this flake
```

### Package Management

The flake includes essential development and system management tools:

- **Code Editors**: VSCode with Nix extensions
- **Version Control**: Git with full functionality
- **UI Libraries**: Gum for beautiful terminal interfaces
- **System Tools**: Various fetch utilities for system information
- **Communication**: ntfy-sh for notifications
- **Documentation**: Marp for presentations, Glow for markdown
- **Graphics**: Mesa demos and hardware utilities


## ✨ Contributing

We welcome contributions! Here's how you can help:

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Make your changes**: Edit the utilities or add new functionality
4. **Test your changes**: Run `nix flake check` to validate
5. **Commit your changes**: `git commit -m 'Add amazing feature'`
6. **Push to the branch**: `git push origin feature/amazing-feature`
7. **Open a Pull Request**

### 📝 Development Guidelines

- Follow Nix best practices
- Test all changes in the development environment
- Update documentation for new features
- Ensure backward compatibility when possible


## 🙋 Have Questions?

Have questions or feedback? Feel free to open an issue or submit a Pull Request!

- 🐛 **Bug Reports**: Use the issue tracker to report bugs
- 💡 **Feature Requests**: Suggest new utilities or improvements
- 📖 **Documentation**: Help improve our documentation
- 💬 **Discussions**: Join the conversation about NixOS utilities


## 🧑‍💻👩‍💻 Contributors

- [Tim Sutton](https://github.com/timlinux) – Original author and maintainer
- [Contributors](https://github.com/timlinux/nixos-utils/graphs/contributors) – See the full list of amazing contributors who have helped make this project possible.


## 📦 Adding to Your Own Flake

You can easily include the nixos-utils package in your own NixOS configuration or flake by adding it as an input.

### 🔧 Adding as Flake Input

Add nixos-utils to your `flake.nix` inputs section:

```nix
{
  description = "Your NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # Add nixos-utils as an input
    nixos-utils.url = "github:timlinux/nixos-utils";
    # Other inputs...
  };

  outputs = { self, nixpkgs, nixos-utils, ... }@inputs: {
    # Your configuration here...
  };
}
```

### 🏠 Using in NixOS Configuration

Include the utils package in your system packages:

```nix
{ config, pkgs, inputs, ... }: {
  environment.systemPackages = with pkgs; [
    # Your other packages...
    inputs.nixos-utils.packages.${pkgs.system}.default
    # Or specifically:
    # inputs.nixos-utils.packages.${pkgs.system}.utils
  ];
}
```

### 👤 Using in Home Manager

If you're using Home Manager, you can add it to your user packages:

```nix
{ config, pkgs, inputs, ... }: {
  home.packages = with pkgs; [
    # Your other packages...
    inputs.nixos-utils.packages.${pkgs.system}.default
  ];
}
```

### 🛠️ Using in Development Shell

Include it in your development environment:

```nix
{
  devShells.default = pkgs.mkShell {
    buildInputs = with pkgs; [
      # Your development tools...
      inputs.nixos-utils.packages.${pkgs.system}.default
    ];
  };
}
```

### 🚀 Using the Package

Once installed, you can run the utilities from anywhere in your system:

```bash
# Run the interactive menu
utils

# Or run directly if using nix run
nix run github:timlinux/nixos-utils
```

The utilities will be available system-wide and you can access all the system information tools, benchmarks, and management utilities through the beautiful terminal interface.




## 3. <a name='Quickstart'></a>Quickstart

I have made a lovely menu / terminal app with all the key functionality provided by this flake:

Running the flake directly from github:

```bash
nix run --extra-experimental-features nix-command --extra-experimental-features flakes github:timlinux/nix-config
```

Or from a local checkout:

```bash
nix run .#
```

* 🏠️ Kartoza NixOS :: Main
* Choose one:
* 👉️💁🏽 Help
  * 🚀 System management
  * ❓️ System info
  * 🖥️ Test VMs
  * 🛼 Create link
  * 🛼 Enter link
  * 🛼 Show value for key
  * 🎬️ Make history video
  * 💿️ System setup
  * 💡 About
  * 🛑 Exit

From here you can perform tasks from the listed sub menus:

### 3.1. <a name='Helpdocumentation'></a>Help documentation

* 👉️🏠️ Main menu
  * 📃 Documentation (in terminal)
  * 🌍️ Documentation (in browser)

Provides the documentation you are looking at on this page, either as console text or in your web browser.

Work through the items in sequence...

### 3.2. <a name='Systemmanagement'></a>System management

* 👉️🏠️ Main menu
  * 🏃🏽 Update system
  * 🦠 Virus scan your home
  * 💿️ Backup ZFS to USB disk
  * 🧹 Clear disk space
  * 💻️ Update firmware
  * ❄️ Update flake lock
  * ⚙️ Start syncthing
  * 👀 Watch dconf
  * 🎬️ Mimetypes diff

Provides tools for configuring your system, starting services, setting up your VPN etc.

### 3.3. <a name='Systeminfo'></a>System info

* 👉️🏠️ Main menu
  * 💻️ Generate your system hardware profile
  * 🗃️ General system info
  * 💿️ List disk partitions
  * 🏃🏽 Generate CPU Benchmark
  * 🚢 Open ports - nmap
  * 🚢 Open ports - netstat
  * 📃 Live system logs
  * 😺 Git stats
  * 👨🏽‍🏫 GitHub user info
  * 🌐 Your ISP and IP
  * 🐿️ CPU info
  * 🐏 RAM info
  * ⭐️ Show me a star constellation

Provides diagnostic and informative information about your system.

### 3.4. <a name='TestVMS'></a>Test VMS

* 👉️🏠️ Main menu
  * 🏗️ Build Kartoza NixOS ISO
  * ❄️ Run Kartoza NixOS ISO
  * 🖥️ Minimal Gnome VM
  * 🖥️ Full Gnome VM
  * 🖥️ Minimal KDE-5 VM
  * 🖥️ Minimal KDE-6 VM
  * 🖥️ Complete Gnome VM (for screen recording)

Builds and provides test VMs that you can use to try out variants of this flake.

### 3.5. <a name='Systemsetup'></a>System setup

* 👉️🏠️ Main menu
  * 🛼 Enter link
  * 🌐 Set up VPN
  * 🔑 Install Tim's SSH keys
  * 💿️ Checkout Nix flake
  * 🏠️ Show your VPN IP address
  * 🪪 Generate host id
  * ⚠️ Format disk with ZFS ⚠️
  * 🖥️ Install system

Tools for setting up a new system from scratch. Assumes an
admin is available to provide you with VPN connection details
etc. and to set up your skate link.

### 3.6. <a name='About'></a>About

📽️ Please see the [Video Walkthrough](https://youtu.be/kR54Gbr-ZP0) I made of the Utils menu for more details on the above.

Made with ❤️ and ❄️ by Tim Sutton (@timlinux) and the NixOS community.
