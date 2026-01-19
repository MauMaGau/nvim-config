-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Leader key setup
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- Keymaps
local keymap = vim.keymap

-- Better navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate left" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate down" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate up" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate right" })

-- Window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make windows equal size" })
keymap.set("n", "<leader>wc", "<C-w>c", { desc = "Close current window" })

-- File explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer" })

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })

-- Git
keymap.set("n", "<leader>gs", "<cmd>Git<cr>", { desc = "Git status" })
keymap.set("n", "<leader>gc", "<cmd>Git commit<cr>", { desc = "Git commit" })
keymap.set("n", "<leader>gp", "<cmd>Git push<cr>", { desc = "Git push" })

-- LSP
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Go to references" })
keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

-- Diagnostic
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
keymap.set("n", "<leader>do", vim.diagnostic.open_float, { desc = "Open diagnostic float" })

-- Quick save/quit
keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
keymap.set("n", "<leader>Q", "<cmd>q!<cr>", { desc = "Force quit" })

-- Clear search
keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Buffer navigation
keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap.set("n", "<S-Tab>", "<cmd>bprev<cr>", { desc = "Previous buffer" })
keymap.set("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Terminal
keymap.set("n", "<leader>t", "<cmd>terminal<cr>", { desc = "Open terminal" })
keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
