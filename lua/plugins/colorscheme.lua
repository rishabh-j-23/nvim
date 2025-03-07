return {
  -- Configure LazyVim to load tokyonight
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    enabled = false,
    opts = { style = "night" },
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    enabled = false,
    config = function()
      vim.cmd("colorscheme kanagawa-wave")
    end,
  },
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    enabled = true,
    config = function()
      vim.cmd("colorscheme carbonfox")
    end,
  },
}
