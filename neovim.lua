return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = 'soft'
      vim.g.everforest_better_performance = 1
      vim.g.everforest_enable_italic = 1
      vim.g.everforest_transparent_background = 0
      vim.g.everforest_ui_contrast = 'low'
      vim.g.everforest_colors_override = {
        bg0 = {'#f4f1e8', '255'},
        bg1 = {'#e8e2d5', '254'},
        bg2 = {'#e0d9c8', '253'},
        bg3 = {'#d6ccb9', '252'},
        bg4 = {'#c9bfac', '251'},
        bg5 = {'#bdb3a0', '250'},
        fg = {'#5c6a53', '242'},
        red = {'#c65f5f', '167'},
        orange = {'#d4a574', '179'},
        yellow = {'#d4a574', '179'},
        green = {'#7a9461', '107'},
        aqua = {'#6fa695', '72'},
        blue = {'#7a92a5', '109'},
        purple = {'#a17a8f', '138'},
      }
    end,
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "everforest" } },
}