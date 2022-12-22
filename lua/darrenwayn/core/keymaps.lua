-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlightsss
keymap.set("n", "<leader>nn", ":nohl<CR>")

-- folding code
keymap.set("n", "<leader>fl", ":set foldmethod=indent<CR>")
keymap.set("n", "<leader>fm", ":set foldmethod=manual<CR>")
keymap.set("n", "<leader>fo", ":set foldmethod=syntax<CR>")

keymap.set("n", "<leader>w", ":set wrap<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>s", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>h", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>e", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>x", ":close<CR>") -- close current split window

keymap.set("n", "<leader>n", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>q", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- Toggle html, css, js
-- keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
-- keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybind
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>gg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>;s", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- keymap.set("n", "<leader>fs", "<cmd>Telescope "
keymap.set("n", "<leader>;;", "<cmd>Telescope resume<cr>") -- list resume
keymap.set("n", "<leader>bb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>hh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>dd", "<cmd>Telescope diagnostics<cr>") -- list diagnostics
keymap.set("n", "<leader>fb", "<cmd>Telescope file_browser<cr>") -- file browser

-- bufferline
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>")
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>")

-- delete bufferline
keymap.set("n", "<leader>dl", "<cmd>Bdelete<cr>")

-- live server
keymap.set("n", "<leader>ls", "<cmd>LiveServer Start<cr>")
keymap.set("n", "<leader>lq", "<cmd>LiveServer Stop <cr>")

-- auto save
keymap.set("n", "<leader>n", "<cmd>:ASToggle <cr>")

-- diffview
keymap.set("n", "<leader>dm", "<cmd>:h diffview-merge-tool <cr>")
keymap.set("n", "<leader>dc", "<cmd>:h diffview-config-view.x.layout <cr>")
keymap.set("n", "<leader>cd", "<cmd>:h copy-diffs <cr>")
keymap.set("n", "<leader>df", "<cmd>:DiffviewFileHistory <cr>")
keymap.set("n", "<leader>dff", "<cmd>:DiffviewFileHistory % <cr>")
keymap.set("n", "<leader>dfff", "<cmd>:h DiffviewFileHistory <cr>")

-- Find and Replace Sadss
keymap.set("n", "<leader>r", "<cmd>:Sad <cr>")

-- Show size package budle
keymap.set("n", "<leader>so", "<cmd>:ImportCost")
keymap.set("n", "<leader>ss", "<cmd>:ImportCostSingle")
keymap.set("n", "<leader>sc", "<cmd>:ImportCostClear")

-- console ninja
keymap.set("n", "<leader>cn", "<cmd>:Lab code run <cr>")
keymap.set("n", "<leader>cs", "<cmd>:Lab code stop <cr>")
