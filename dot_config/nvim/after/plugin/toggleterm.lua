-- https://github.com/akinsho/toggleterm.nvim

require('toggleterm').setup {
    direction = 'float',
    float_opts = {
        border = 'curved',
    },

}

vim.keymap.set('n', '<C-t>', '<Cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
vim.keymap.set('t', '<C-t>', '<Cmd>ToggleTerm<CR>', { desc = 'Toggle terminal (in term mode)' })
