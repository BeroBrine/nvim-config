local config = function()
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
	local null_ls = require("null-ls")
	null_ls.setup({
		sources = {
			null_ls.builtins.diagnostics.oxlint, -- for js and ts lsp
			null_ls.builtins.formatting.biome, -- for js and ts lsp
			null_ls.builtins.formatting.stylua, -- for lua
		},
		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}),
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({
					group = augroup,
					buffer = bufnr,
				})
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						vim.lsp.buf.format({
							bufnr = bufnr,
							filter = function(what)
								return what.name == "null-ls"
							end,
						})
					end,
				})
			end
		end,
	})
end
return {
	"nvimtools/none-ls.nvim",
	event = "VeryLazy",
	config = config,
}
