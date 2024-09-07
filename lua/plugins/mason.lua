local opts = {
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},{
		ensure_installed = {
			"typescript-language-server"
		},
	},
}

return {
	"williamboman/mason.nvim",
	opts = opts,
	cmd = "Mason",
	event = "BufReadPre",
}
