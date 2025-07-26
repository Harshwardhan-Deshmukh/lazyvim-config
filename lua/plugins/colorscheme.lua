-- -- lua/plugins/rose-pine.lua
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     require("rose-pine").setup({
--       styles = {
--         bold = true,
--         italic = false,
--         transparency = true,
--       },
--     })
--     vim.cmd("colorscheme rose-pine")
--   end,
-- }

return {
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("vscode").setup({
        transparent = true,
        italic_comments = true,
      })
      vim.cmd.colorscheme("vscode")

      -- Make terminal background transparent
      vim.cmd([[
        highlight Normal ctermbg=none guibg=none
        highlight NormalNC ctermbg=none guibg=none
        highlight VertSplit ctermbg=none guibg=none
        highlight SignColumn ctermbg=none guibg=none
        highlight EndOfBuffer ctermbg=none guibg=none
        highlight MsgArea ctermbg=none guibg=none
        highlight NormalFloat ctermbg=none guibg=none
        highlight FloatBorder ctermbg=none guibg=none
        highlight TermCursorNC ctermbg=none guibg=none
      ]])
    end,
  },
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--   },
-- }
