vim.cmd("source ~/.vimrc")
vim.opt.guifont = 'Consolas:h10'
vim.opt.mouse = 'a'

require('plugins')

vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap=true, silent=true})

vim.cmd([[
" quit if NERDTree is last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
]])

