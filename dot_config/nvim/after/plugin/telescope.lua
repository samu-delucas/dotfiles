-- https://github.com/nvim-telescope/telescope.nvim

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})		-- ff = fuzzy files
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})		-- fg = fuzzy git files
vim.keymap.set('n', '<leader>fs', function()				    -- fs = fuzzy search
	builtin.grep_string({ search = vim.fn.input('grep > ') })
end)

-- maybe add fb = fuzzy buffer (search in current buffer)
