require('luasnip').config.setup {
    history = true,
    native_menu = false,
    updateevents = 'TextChanged,TextChangedI',
    enable_autosnippets = true,
}

require("luasnip.loaders.from_vscode").load({ paths = { "./vscode_snippets" } })
