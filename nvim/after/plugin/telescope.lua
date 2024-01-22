 -- require('telescope.builtin').find_files({layout_strategy='horizontal',layout_config={preview_width=0.7}})
require('telescope').setup({
	defaults = {
		layout_strategy = 'horizontal',
		layout_config = {
			preview_width = 0.7
		}
	}
})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
vim.keymap.set('n', '<leader>st', builtin.git_stash, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
