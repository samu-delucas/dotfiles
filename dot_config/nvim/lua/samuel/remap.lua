-- leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Exit to explorer", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down selected block of text", silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up selected block of text", silent = true })

-- vim.keymap.set("n", "J", "mzJ`z") -- same as J but keeping the cursor at the start of the line

vim.keymap.set("n", "<C-d>", "<C-d>zz",
    { desc = "Scroll down keeping cursor in the middle of the screen", silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up keeping cursor in the middle of the screen", silent = true })

vim.keymap.set("n", "n", "nzzzv",
    { desc = "Next occurrence of the search keeping cursor in the middle of the screen", silent = true })
vim.keymap.set("n", "N", "Nzzzv",
    { desc = "Previous occurrence of the search keeping cursor in the middle of the screen", silent = true })
vim.keymap.set("n", "*", "*zzzv",
    { desc = "Search word under the cursor keeping cursor in the middle of the screen", silent = true })

vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste over without deleting the copied block", silent = true })

-- No se la diferencia entre 'y' y 'Y'
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Copy to system clipboard" })
vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Copy to system clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without copying to clipboard" })

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current buffer" }) -- quiero añadir esto :%s/\s\+$//e

-- Estos son para quickfix (supongo que de lsp pero ni idea la vd)
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Search and replace word under cursor" })

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make current file executable", silent = true })

-- Better indenting
vim.keymap.set("n", "<TAB>", ">>", { desc = "Indent line", silent = true, noremap = true })
vim.keymap.set("n", "<S-TAB>", "<<", { desc = "Unindent line", silent = true, noremap = true })
vim.keymap.set("v", "<TAB>", ">gv", { desc = "Indent selected block of text", silent = true, noremap = true })
vim.keymap.set("v", "<S-TAB>", "<gv", { desc = "Unindent selected block of text", silent = true, noremap = true })
vim.keymap.set("v", ">", ">gv", { desc = "Indent selected block of text", silent = true })
vim.keymap.set("v", "<", "<gv", { desc = "Unindent selected block of text", silent = true })

-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
