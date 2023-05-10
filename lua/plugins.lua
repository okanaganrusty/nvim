return {
  {
    "folke/neodev.nvim"
  },
  {
    "folke/which-key.nvim",
    config = true
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    lazy = false,    -- make sure we load this during startup as it is our main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end
  }
}
