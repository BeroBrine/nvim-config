local keymap = vim.keymap

-- directory navigation
keymap.set("n", "<leader>t", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>n", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

--pane navigation
keymap.set("n", "<c-h>", "<c-w>h", opts) -- navigate left
keymap.set("n", "<c-j>", "<c-w>j", opts) -- navigate down
keymap.set("n", "<c-k>", "<c-w>k", opts) -- navigate up
keymap.set("n", "<c-l>", "<c-w>l", opts) -- navigate right
keymap.set("n", "<c-tab>", ":bn<cr>", { noremap = true })
-- window management
keymap.set("n", "<leader>sv", ":vsplit<cr>", opts)                     -- split vertical
keymap.set("n", "<leader>sh", ":split<cr>", opts)                      -- split horizontally
keymap.set("n", "<leader>sm", ":maximizetoggle<cr>", opts)             -- toggle minimize
keymap.set("n", "<c-c>", ":q!<cr>", { noremap = true, silent = true }) -- toggle minimize
--keys
keymap.set("i", "<c-j>", "<down>", { noremap = true, silent = true })
keymap.set("i", "<c-k>", "<up>", { noremap = true, silent = true })
keymap.set("i", "<c-h>", "<left>", { noremap = true, silent = true })
keymap.set("i", "<c-l>", "<right>", { noremap = true, silent = true })

-- comment
vim.api.nvim_set_keymap("n", "<c-/>", "gcc", { noremap = true })
vim.api.nvim_set_keymap("v", "<c-/>", "gcc", { noremap = true })

--indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--undo tree
keymap.set('n', '<leader-f5>', vim.cmd.undotreetoggle)

-- toggle term
keymap.set('n', '<leader>h', ":ToggleTerm<cr>", { noremap = true, silent = true })
-- lsp buffer show
keymap.set('n', '<leader>m', ":lua vim.lsp.buf.hover()<cr>", { noremap = true, silent = true })
keymap.set('n', '<c-s>', ":w<cr>", { noremap = true, silent = true })
keymap.set('n', '<c-q>a', ":wqa<cr>", { noremap = true, silent = true })
keymap.set('n', '<c-q>s', ":wq<cr>", { noremap = true, silent = true })
keymap.set('n', '<c-q>w', ":q!<cr>", { noremap = true, silent = true })
-- bufferline
keymap.set('n', '<tab>', ":bufferlinecyclenext<cr>", { noremap = true, silent = true })
keymap.set('n', '<s-tab>', ":bufferlinecycleprev<cr>", { noremap = true, silent = true })
keymap.set('n', '<c-x>', ":bufferlinecloseothers<cr>", { noremap = true, silent = true })
--

keymap.set('n', '<c-d>', "vi'", { nowait = true, remap = true, silent = true })
keymap.set('n', '<c-f>', 'vi"', { nowait = true, remap = true, silent = true })
keymap.set('n', '<c-b>', 'vib', { nowait = true, remap = true, silent = true })
keymap.set('n', '<c-g>', 'vib', { nowait = true, remap = true, silent = true })
--
keymap.set('n', '<c-k>', '3k', { nowait = true, remap = true, silent = true })
keymap.set('n', '<c-j>', '3j', { nowait = true, remap = true, silent = true })
-- debugger
vim.keymap.set('n', '<leader>dc', ":DapContinue<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ds', ":DapStepOver<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>di', ":DapStepInto<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>do', ":DapStepOut<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>db', ":DapToggleBreakpoint<CR>", { noremap = true, silent = true })
