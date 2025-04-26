-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- move selection up or down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

keymap("i", "<D-BS>", "<C-u>", { desc = "Delete entire line in insert mode (no yank)" })
keymap("i", "<A-BS>", "<C-w>", { desc = "Delete word in insert mode (no yank)" })
keymap("i", "<D-Left>", "<C-o>^", { desc = "Move to beginning of line in insert mode" })
keymap("i", "<D-Right>", "<C-o>$", { desc = "Move to end of line in insert mode" })
keymap("i", "<A-Left>", "<C-Left>", { desc = "Move back a word in insert mode" })
keymap("i", "<A-Right>", "<C-Right>", { desc = "Move forward a word in insert mode" })
keymap("n", "J", "mzJ`z", { desc = "Join current line with next line without moving the cursor" })

-- project view
keymap("n", "<leader>pv", ":Ex<CR>", { desc = "Open Explorer" })

keymap("n", "<leader>o", "o<Esc>k", { desc = "Add new line below (stay in place)" })
keymap("n", "<leader>O", "O<Esc>j", { desc = "Add new line above (stay in place)" })

keymap("x", "<leader>p", '"_dP', { desc = "Paste over selection without losing clipboard" })

-- quick replace a word using %s/<word_before>/<word_after>/g
keymap("n", "<leader>zR", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Search & replace word under cursor",
})

-- Window Resize
keymap("n", "<S-Left>", ":vertical resize -5<CR>", { desc = "Resize split ← (narrower)" })
keymap("n", "<S-Right>", ":vertical resize +5<CR>", { desc = "Resize split → (wider)" })
keymap("n", "<S-Up>", ":resize +2<CR>", { desc = "Resize split ↑ (taller)" })
keymap("n", "<S-Down>", ":resize -2<CR>", { desc = "Resize split ↓ (shorter)" })

-- add current line below
keymap("n", "<leader>ab", "Yp^", { desc = "Duplicate line and jump to first char" })

-- Open terminal and compile the current Java file
keymap("n", "<leader>jc", ":term javac -d out %<CR>", { desc = "Compile Java File", silent = true, noremap = true })
