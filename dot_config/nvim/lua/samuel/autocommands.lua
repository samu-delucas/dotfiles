vim.api.nvim_create_autocmd({'VimLeave'}, {
    pattern = '*',
    command = 'set guicursor=a:ver100'
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd({"BufWritePost"}, {
    pattern = "~/.local/share/chezmoi/*",
    command = [[! chezmoi apply --source-path "%"]],
})
