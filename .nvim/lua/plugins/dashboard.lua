-- Dashboard/Banner plugin with custom welcome message
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Custom ASCII art banner for GEEST
    dashboard.section.header.val = {
      [[         y~` ``~_                                                            ]],
      [[       y~  :__:  ~                                                           ]],
      [[       ~  F   `y  `                                        _                ]],
      [[         :        :           ` y~F   F_`   "yy_~ __:__!y~___~ L__::F  ',L  ]],
      [[         :        :            `y    y: ,"   4_F:   :l  :F   :l  ~_~  Fy ,y ]],
      [[       _  L ___===a            y_y   :___,y  a_:    :l  _`__y:'y~z__ y:___:_]],
      [[   y~`" : : L       `~_       y  yy =~   `y y  ~_   y    ~yyy` yyyyy'y    ~=]],
      [[ y~  :_F`: : __~~~y_:  `_      .  y. .,, _.,.     ,, .,  ,,_    ,, ,.y ,,__.]],
      [[F  _~    `_~~  y     y. :,   `rT r'T f ^r~`  r Y?r ``T`~ ^'~Yr f `r'```r^` ~]],
      [[:  L      _~  y       L  4            L  s_  a=y r=  s  s__ _  __           ]],
      [[_  `    _~: :~y~y_   _:  F           4a'L4__ J_~ =+  :__4L $:_lr:           ]],
      [[ _  :~~`   _` _  :`~`  :y              ` ``   `  ``  ````` ``` ``           ]],
      [[  ~__,___y`    ~y_____y~                                                   ]],
      [[                                                                       ]],
      [[          Kartoza - Open Source Geospatial Solutions          ]],
      [[          https://www.kartoza.com ]],
      [[          🌍 NeoVim Development Environment                   ]],
      [[                                                                       ]],
    }

    -- Menu items
    dashboard.section.buttons.val = {
      dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
      dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
      dashboard.button("c", "  Configuration", ":e .nvim/init.lua<CR>"),
      dashboard.button("p", "  Python files", ":Telescope find_files search_dirs={'geest/'}<CR>"),
      dashboard.button("g", "  Git status", ":Telescope git_status<CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Custom footer
    local function footer()
      local datetime = os.date(" %Y-%m-%d   %H:%M:%S")
      local version = vim.version()
      local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

      return {
        "GEEST Development Environment",
        "Optimized for Python & QGIS Plugin Development",
        "",
        datetime,
        nvim_version_info,
      }
    end

    dashboard.section.footer.val = footer()

    -- Header and footer colors
    dashboard.section.header.opts.hl = "Type"
    dashboard.section.buttons.opts.hl = "Keyword"
    dashboard.section.footer.opts.hl = "Comment"

    -- Layout
    dashboard.opts.layout = {
      { type = "padding", val = 2 },
      dashboard.section.header,
      { type = "padding", val = 2 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    -- Disable folding on alpha buffer
    vim.cmd([[
      autocmd FileType alpha setlocal nofoldenable
    ]])

    -- Setup alpha
    alpha.setup(dashboard.opts)
  end,
}
