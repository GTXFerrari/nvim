-- Shorten function name
local keymap = vim.keymap.set

-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<NOP>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better Window nav (Move between buffers w/ Ctrl+{h,j,k,l}
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows (Resize with Ctrl+{Up,Down,Left,Right}
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers (Cycle buffers with Shift+{l,h}
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Make a file executable
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

-- Clear Highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Keep cursor towards the beginning of line when using J
keymap("n", "J", "mzJ`z")

-- Insert

-- Visual
-- Move highlighted text together (Shift+{J,K}
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Better paste (Keeps current value in register when pasting instead of grabbing new value)
keymap("v", "p", '"_dp', opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>')

-- Toggleterm
keymap("n", "<leader>tt", "<cmd>ToggleTerm<CR>", opts)
