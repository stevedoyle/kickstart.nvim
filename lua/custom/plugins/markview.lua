-- Markdown/HTML/LaTeX/Typst/YAML previewer
--  See https://github.com/OXY2DEV/markview.nvim
--  Depends on `nvim-treesitter` (already installed via init.lua) and uses
--  `mini.icons` (via its nvim-web-devicons compatibility shim) for icons.
vim.pack.add { 'https://github.com/OXY2DEV/markview.nvim' }

require('markview').setup {
  preview = {
    enable = false, -- Don't auto-show previews on load; toggle with <leader>mv
    filetypes = { 'markdown', 'codecompanion' },
    ignore_buftypes = {},
  },
}

vim.keymap.set('n', '<leader>mv', '<cmd>Markview<CR>', { desc = '[M]arkview: toggle preview' })
