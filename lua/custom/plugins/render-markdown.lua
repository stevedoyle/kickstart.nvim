-- Improve viewing Markdown in Neovim
--  See https://github.com/MeanderingProgrammer/render-markdown.nvim
--  Depends on `nvim-treesitter` (already installed via init.lua) and uses
--  `mini.icons` (via its nvim-web-devicons compatibility shim) for icons.
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

require('render-markdown').setup {
  enabled = false, -- Don't auto-render on load; toggle with <leader>mr
}

vim.keymap.set('n', '<leader>mr', '<cmd>RenderMarkdown toggle<CR>', { desc = '[M]arkdown [R]ender toggle' })
