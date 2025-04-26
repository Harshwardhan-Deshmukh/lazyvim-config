-- Search Grep in Hidden Files
return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>sg",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function()
              return { "--hidden", "--glob", "!.git/*" }
            end,
          })
        end,
        desc = "Live Grep (including hidden files)",
      },
    },
  },
}
