local keymap = vim.keymap

-- directory navigation
keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>nb", ":Neotree buffers<CR>", { noremap = true, silent = true })

-- window management
keymap.set("n", "<leader>sv", ":vsplit<cr>", opts) -- split vertical
keymap.set("n", "<leader>sh", ":split<cr>", opts) -- split horizontally
keymap.set("n", "<leader>sm", ":maximizetoggle<cr>", opts) -- toggle minimize
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
keymap.set("n", "<leader-f5>", vim.cmd.undotreetoggle)

-- lsp buffer show
keymap.set("n", "<leader>m", ":lua vim.lsp.buf.hover()<cr>", { noremap = true, silent = true })
keymap.set("n", "<c-s>", ":w<cr>", { noremap = true, silent = true })
keymap.set("n", "<c-q>a", ":wqa<cr>", { noremap = true, silent = true })
keymap.set("n", "<c-q>s", ":wq<cr>", { noremap = true, silent = true })
keymap.set("n", "<c-q>w", ":q!<cr>", { noremap = true, silent = true })
-- bufferline
keymap.set("n", "<tab>", ":bufferlinecyclenext<cr>", { noremap = true, silent = true })
keymap.set("n", "<s-tab>", ":bufferlinecycleprev<cr>", { noremap = true, silent = true })
keymap.set("n", "<c-x>", ":bufferlinecloseothers<cr>", { noremap = true, silent = true })
--
keymap.set("n", "<c-n>", "vi'", { nowait = true, remap = true, silent = true })
keymap.set("n", "<c-e>", 'vi"', { nowait = true, remap = true, silent = true })
keymap.set("n", "<c-g>", "vi{", { nowait = true, remap = true, silent = true })
keymap.set("n", "<c-p>", "vi(", { nowait = true, remap = true, silent = true })

keymap.set("n", "<c-<>", "vi<", { nowait = true, remap = true, silent = true })
--
keymap.set("n", "<return>", "o", { nowait = true, remap = true, silent = true })
keymap.set("i", "<c-b>", "``", { nowait = true, remap = true, silent = true })
keymap.set("i", "<c-v>", "`", { nowait = true, remap = true, silent = true })
keymap.set("i", "<c-q>", "res.status().json({msg: ''})", { nowait = true, remap = true, silent = true })
