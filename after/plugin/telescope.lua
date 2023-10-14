local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Find files" })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = "Find git files" })
vim.keymap.set('n', '<leader>fw', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Find word" })
vim.keymap.set('n', '<leader>ft', builtin.help_tags, { desc = "Find tags" })

