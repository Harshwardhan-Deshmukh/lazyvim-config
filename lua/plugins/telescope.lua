-- telescope - Hidden Files in cwd
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- Load custom keymaps <leader>sg keymap with hidden files
      {
        "<leader>sx",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function()
              return { "--hidden", "--glob", "!.git/*" }
            end,
          })
        end,
        desc = "Live Grep (including hidden files)",
      },
      -- Add custom find_files (including hidden files)
      {
        "<leader>fx",
        function()
          require("telescope.builtin").find_files({
            hidden = true,
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git/*" },
          })
        end,
        desc = "Find Files (including hidden)",
      },
    },
  },
}
