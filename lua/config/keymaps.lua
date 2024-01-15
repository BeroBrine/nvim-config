local keymap = vim.keymap

-- Directory Navigation
keymap.set("n" , "<leader>t" , ":NvimTreeFocus<CR>" , { noremap = true , silent = true }) 
keymap.set("n" , "<leader>n" , ":NvimTreeToggle<CR>" , { noremap = true , silent = true })

--Pane Navigation
keymap.set("n" , "<C-h>" , "<C-w>h" , opts) -- Navigate left
keymap.set("n" , "<C-j>" , "<C-w>j" , opts) -- Navigate Down
keymap.set("n" , "<C-k>" , "<C-w>k" , opts) -- Navigate Up  
keymap.set("n" , "<C-l>", "<C-w>l" , opts) -- Navigate Right
keymap.set("n" , "<C-tab>" , ":bn<CR>" , {noremap = true})
-- Window Management 
keymap.set("n" , "<leader>sv" , ":vsplit<CR>" , opts) -- Split Vertical
keymap.set("n" , "<leader>sh" , ":split<CR>" , opts) -- Split Horizontally
keymap.set("n" , "<leader>sm" , ":MaximizeToggle<CR>" , opts) -- Toggle Minimize
keymap.set("n" , "<C-c>" , ":q!<CR>" , {noremap = true , silent = true}) -- Toggle Minimize
--Keys
keymap.set("i" , "<C-j>" , "<Down>" , {noremap = true , silent = true})
keymap.set("i" , "<C-k>" , "<Up>" , {noremap = true , silent = true})
keymap.set("i" , "<C-h>" , "<Left>" , {noremap = true , silent = true})
keymap.set("i" , "<C-l>" , "<Right>" , {noremap = true , silent = true})

-- comment
vim.api.nvim_set_keymap("n" , "<C-/>" , "gcc" , {noremap = true })
vim.api.nvim_set_keymap("v" , "<C-/>" , "gcc" , {noremap = true })

--indenting
keymap.set("v" , "<" , "<gv")
keymap.set("v" , ">" , ">gv") 

--undo tree
keymap.set('n' , '<leader-F5>' , vim.cmd.UndotreeToggle)

-- toggle term
keymap.set('n' , '<leader>h' , ":ToggleTerm<CR>", {noremap = true , silent = true})
-- lsp buffer show
keymap.set('n' , '<leader>m' , ":lua vim.lsp.buf.hover()<CR>" , {noremap = true , silent = true})
keymap.set('n' , '<C-s>' , ":w<CR>" , {noremap = true , silent = true})
keymap.set('i' , '<C-e>' , "=" , {noremap = true , silent = true})
keymap.set('n' , '<C-q>a' , ":wqa<CR>" , {noremap = true , silent = true})
keymap.set('n' , '<C-q>s' , ":wq<CR>" , {noremap = true , silent = true})
keymap.set('n' , '<C-q>w' , ":q!<CR>" , {noremap = true , silent = true})
-- bufferline
keymap.set('n' , '<tab>' , ":BufferLineCycleNext<CR>" , {noremap = true , silent = true})
keymap.set('n' , '<S-tab>' , ":BufferLineCyclePrev<CR>" , {noremap = true , silent = true})
