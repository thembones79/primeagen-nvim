function ColorMyPencils(color)
	color = color or "mine-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

end

if not vim.g.neovide then
     ColorMyPencils("mine-pine")
end

