local config = function()
	local cmp = require("cmp")

	local ls = require("luasnip")
	local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
	require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

	cmp.setup({
		completion = {
			completeopt = "menu,menuone,preview,noselect",
		},
		snippet = {
			expand = function(args)
				ls.lsp_expand(args.body)
				vim.fn["UltiSnips#Anon"](args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
			["<tab>"] = cmp.mapping.select_next_item(), -- next suggestions
			["<C-b>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
			["<C-e>"] = cmp.mapping.abort(), --close completion window
			["<CR>"] = cmp.mapping.confirm({ select = false }),
		}),
		-- sources for completion
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			-- { name = "luasnip" }, --snippets
			{ name = "ultisnips" }, -- cp snippets
			{ name = "buffer" }, --text within current buf:fer
			{ name = "path" }, -- file system paths
		}),
	})
end

return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},

	config = config,
}
