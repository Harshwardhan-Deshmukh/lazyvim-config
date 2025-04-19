-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap.set

-- move selection up or down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

keymap("n", "J", "mzJ`z", { desc = "Join current line with next line without moving the cursor" })

-- project view
keymap("n", "<leader>pv", ":Ex<CR>", { desc = "Open Explorer" })

keymap("n", "<leader>o", "o<Esc>k", { desc = "Add new line below (stay in place)" })
keymap("n", "<leader>O", "O<Esc>j", { desc = "Add new line above (stay in place)" })

keymap("x", "<leader>p", '"_dP', { desc = "Paste over selection without losing clipboard" })

-- quick replace a word using %s/<word_before>/<word_after>/g
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {
  desc = "Search & replace word under cursor",
})

-- Window Resize
keymap("n", "<S-Left>", ":vertical resize -5<CR>", { desc = "Resize split ← (narrower)" })
keymap("n", "<S-Right>", ":vertical resize +5<CR>", { desc = "Resize split → (wider)" })
keymap("n", "<S-Up>", ":resize +2<CR>", { desc = "Resize split ↑ (taller)" })
keymap("n", "<S-Down>", ":resize -2<CR>", { desc = "Resize split ↓ (shorter)" })

-- add below
keymap("n", "<leader>ab", "Yp^", { desc = "Duplicate line and jump to first char" })

-- Run Javac for all the programs within the project and output them in out folder
keymap("n", "<leader>jc", function()
  vim.cmd("belowright split | terminal javac -d out $(find . -name '*.java')")
end, { desc = "Compile all Java files to out folder" })
