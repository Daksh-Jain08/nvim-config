vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set scrolloff=8")
vim.cmd("set number")
vim.cmd("set relativenumber")
local keymap = function (mode ,lhs, rhs)
  vim.api.nvim_set_keymap(mode, lhs, rhs, { noremap = true, silent = true })
end

keymap('t', '<Esc>', '<C-\\><C-n>')

--yanking and pasting from and to the clipboard
keymap('v', '<leader>y', '"+y')
keymap('x', '<leader>y', '"+y')
keymap('n', '<leader>p', '"+p')
keymap('n', '<C-j>', ':sp<CR><C-w><C-w>:terminal<CR>')

--moving between windows
keymap('n', '<C-k>', '<C-w>k')
keymap('v', '<C-k>', '<C-w>k')
keymap('x', '<C-k>', '<C-w>k')

keymap('n', '<C-j>', '<C-w>j')
keymap('v', '<C-j>', '<C-w>j')
keymap('x', '<C-j>', '<C-w>j')

keymap('n', '<C-h>', '<C-w>h')
keymap('v', '<C-h>', '<C-w>h')
keymap('x', '<C-h>', '<C-w>h')

keymap('n', '<C-l>', '<C-w>l')
keymap('v', '<C-l>', '<C-w>l')
keymap('x', '<C-l>', '<C-w>l')
