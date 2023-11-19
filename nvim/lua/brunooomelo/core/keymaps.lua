-- set leader key to space
vim.g.mapleader = " "

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- # General Keymaps

-- keep cursor centered when scrolling
map("n", "J", "<C-d>zz", opts)
map("n", "K", "<C-u>zz", opts)

-- fast saving
map("n", "<leader>w", ":write!<CR>", opts)
map("n", "<leader>q", ":q!<CR>", opts)

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Exit on jj and jk
map("i", "jj", "<ESC>", opts)
map("i", "jk", "<ESC>", opts)

-- Delete a word backwards
map("n", "dw", "vb_d")

-- Select all
map("n", "<C-a>", "gg<S-v>G")

-- Move to start/end of line
map({ "n", "x", "o" }, "H", "^", opts)
map({ "n", "x", "o" }, "L", "$", opts)

-- Navigate in buffers
map("n", "<tab>", ":bnext<CR>", opts)
map("n", "<s-tab>", ":bprev<CR>", opts)
map("n", "td", ":bdelete<CR>", opts)

-- Remove highlight
map("n", "ss", ":noh<CR>", opts)

-- Remap for dealing with word wrap
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- trouble
map("n", "<F2>", "<cmd>TroubleToggle<cr>", opts)

-- todo trouble
map("n", "tt", ":TodoTrouble<CR>", opts)

-- LSP diagnostic
map("n", "<leader>[", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
map("n", "<leader>]", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
