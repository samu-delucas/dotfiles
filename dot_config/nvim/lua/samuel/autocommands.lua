vim.api.nvim_create_autocmd({'VimLeave'}, {
    pattern = '*',
    command = 'set guicursor=a:ver100'
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = "*",
    command = [[%s/\s\+$//e]],
})
