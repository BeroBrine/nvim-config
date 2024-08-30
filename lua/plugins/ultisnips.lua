return {
	"SirVer/ultisnips",
	config = function()
		vim.g.UltiSnipsSnippetDir = "~/.config/nvim/lua/plugins/mySnippets"
		vim.g.UltiSnipsSnippetDirectories = { "~/.config/nvim/lua/plugins/mySnippets" }
		vim.g.UltiSnipsEditSplit = "vertical"
	end,
}
