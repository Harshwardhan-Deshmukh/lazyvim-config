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
    lazy = false, -- so that it loads immediately
    priority = 1000, -- make sure it loads before other plugins
    config = function()
      require("vscode").setup({
        -- transparent = true,
        italic_comments = true,
      })
      vim.cmd.colorscheme("vscode")
    end,
  },
}
