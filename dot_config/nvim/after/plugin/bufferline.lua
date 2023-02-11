vim.opt.termguicolors = true
require('bufferline').setup {
    options = {
        close_command = "bdelete! %d",
        right_mouse_command = "vertical sbuffer %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = "bdelete! %d",
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 20,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 20,
        diagnostics = "nvim_lsp",
        diagnostics_update_in_insert = false,
        diagnostics_indicator = function(count, level, _, context)
            if context.buffer.current() then
                return ''
            end
            local icon = level:match("error") and " " or " "
            return " " .. icon .. count
        end,
        offsets = {
            {
                text = 'פּ EXPLORER',
                filetype = 'neo-tree',
                highlight = 'NONE',
                text_align = 'left',
                separator = true,
            },
            {
                  text = '社UNDOTREE',
                filetype = 'undotree',
                highlight = 'NONE',
                separator = true,
            },
            {
                text = ' PACKER',
                filetype = 'packer',
                highlight = 'NONE',
                separator = true,
            },
            {
                text = ' DIFF VIEW',
                filetype = 'DiffviewFiles',
                highlight = 'NONE', --'PanelHeading',
                separator = true,
            },
        },
        show_buffer_default_icon = false, -- whether or not an unrecognised filetype should show a default icon
        separator_style = 'thin',
        indicator = {
            -- icon = '>',
            style = 'underline'
        },
        hover = {
            enabled = true,
            delay = 0,
            reveal = { 'close' }
        },
        sort_by = 'insert_after_current',
        highlights = {
            indicator_selected = { sp = "#eb6f92" },
            buffer_selected = { bg = "#eb6f92" }
        },
        custom_areas = {
            right = function()
                local result = {}
                local seve = vim.diagnostic.severity
                local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
                local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
                local info = #vim.diagnostic.get(0, { severity = seve.INFO })
                local hint = #vim.diagnostic.get(0, { severity = seve.HINT })

                if error ~= 0 then
                    table.insert(result, { text = "  " .. error, fg = "#EC5241" })
                end

                if warning ~= 0 then
                    table.insert(result, { text = "  " .. warning, fg = "#EFB839" })
                end

                if hint ~= 0 then
                    table.insert(result, { text = "  " .. hint, fg = "#A3BA5E" })
                end

                if info ~= 0 then
                    table.insert(result, { text = "  " .. info, fg = "#7EA9A7" })
                end
                return result
            end,
        }

    }
}

vim.keymap.set('n', 'gD', '<Cmd>BufferLinePickClose<CR>', { desc = 'Close buffer' })
vim.keymap.set('n', 'gb', '<Cmd>BufferLinePick<CR>', { desc = 'Pick buffer' })
-- vim.keymap.set('n', '<leader><tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
-- vim.keymap.set('n', '<S-tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
-- vim.keymap.set('n', '[b', '<Cmd>BufferLineMoveNext<CR>', { desc = 'Move buffer to next' })
-- vim.keymap.set('n', ']b', '<Cmd>BufferLineMovePrev<CR>', { desc = 'Move buffer to previous' })
vim.keymap.set('n', '<leader>1', '<Cmd>BufferLineGoToBuffer 1<CR>', { desc = 'Go to buffer 1', silent = true })
vim.keymap.set('n', '<leader>2', '<Cmd>BufferLineGoToBuffer 2<CR>', { desc = 'Go to buffer 2', silent = true })
vim.keymap.set('n', '<leader>3', '<Cmd>BufferLineGoToBuffer 3<CR>', { desc = 'Go to buffer 3', silent = true })
vim.keymap.set('n', '<leader>4', '<Cmd>BufferLineGoToBuffer 4<CR>', { desc = 'Go to buffer 4', silent = true })
vim.keymap.set('n', '<leader>5', '<Cmd>BufferLineGoToBuffer 5<CR>', { desc = 'Go to buffer 5', silent = true })
vim.keymap.set('n', '<leader>6', '<Cmd>BufferLineGoToBuffer 6<CR>', { desc = 'Go to buffer 6', silent = true })
vim.keymap.set('n', '<leader>7', '<Cmd>BufferLineGoToBuffer 7<CR>', { desc = 'Go to buffer 7', silent = true })
vim.keymap.set('n', '<leader>8', '<Cmd>BufferLineGoToBuffer 8<CR>', { desc = 'Go to buffer 8', silent = true })
vim.keymap.set('n', '<leader>9', '<Cmd>BufferLineGoToBuffer 9<CR>', { desc = 'Go to buffer 9', silent = true })

-- si no pongo esto aquí no se pone transparente el bufferline
vim.g.transparent_enabled = true
