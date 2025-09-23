{
  inputs,
  system,
  pkgs,
  ...
}:
pkgs.mkShell {
  packages = [
    # Development
    pkgs.actionlint # for checking gh actions
    pkgs.bandit
    pkgs.bearer
    pkgs.bearer
    pkgs.chafa # Image to ASCII converter
    pkgs.codeql
    pkgs.ffmpeg # Convert gource videos to gifs
    pkgs.gdb
    pkgs.git
    pkgs.glogg
    pkgs.glow # terminal markdown viewer
    pkgs.gource # Software version control visualization
    pkgs.gum # UX for TUIs
    pkgs.isort
    pkgs.jq
    pkgs.libsForQt5.kcachegrind
    pkgs.luaPackages.luacheck
    pkgs.markdownlint-cli
    pkgs.neovim
    pkgs.nixfmt-rfc-style # formatting compliance with nix standards
    pkgs.nodejs_20 # needed for copilot in neovim
    pkgs.nodePackages.cspell
    pkgs.pre-commit # for formatting commits
    pkgs.privoxy
    pkgs.pyprof2calltree # needed to covert cprofile call trees into a format kcachegrind can read
    pkgs.rage
    pkgs.rpl
    pkgs.shellcheck
    pkgs.shfmt
    pkgs.stylua
    pkgs.virtualenv
    pkgs.vscode
    pkgs.yamlfmt
    pkgs.yamllint
    (pkgs.python3.withPackages (ps: [
      ps.black
      ps.click # needed by black
      ps.debugpy
      ps.flake8
      ps.gdal
      ps.httpx
      ps.httpx
      ps.jsonschema
      ps.mypy
      ps.numpy
      ps.odfpy
      ps.pandas
      ps.paver # For autocompletion in vscode
      ps.pip
      ps.psutil
      ps.pyqt5-stubs
      ps.pytest
      ps.pytest
      ps.pytest-qt
      ps.python
      ps.setuptools
      ps.snakeviz # For visualising cprofiler outputs
      ps.sqlfmt
      ps.toml
      ps.typer
      ps.wheel
      # This executes some shell code to initialize a venv in $venvDir before
      # dropping into the shell
      ps.venvShellHook
      ps.virtualenv
    ]))
  ];

  shellHook = ''
    # Run the welcome prompt
    #./utils/prompt.sh
    chafa -f kitty --scale 0.5 --symbols ascii img/KartozaNixOS.png
    export PATH="$(pwd)/.nvim:$PATH"
    echo ""
    echo "-----------------------"
    echo "🌈 Your Dev Environment is prepared."
    echo "-----------------------"
    echo "We provide a ready-to-use"
    echo "VSCode environment which you"
    echo "can start like this:"
    echo ""
    echo "./scripts/vscode.sh"
    echo ""
    echo "We also provide a ready to use neovim setup:"
    echo ""
    echo "🎯 You can start Neovim with GEEST configuration:"
    echo "📝 'vim' (which is an alias to) -> ./.nvim/vim"
    echo ""
  '';
}
