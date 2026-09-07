vim.pack.add { 'https://github.com/ibhagwan/fzf-lua' }
require('fzf-lua').setup {}

vim.keymap.set('n', '<c-\\>', function() require('fzf-lua').buffers() end, { desc = 'Fzf [B]uffers' })
vim.keymap.set('n', '<c-k>', function() require('fzf-lua').builtin() end, { desc = 'Fzf Builtin' })
vim.keymap.set('n', '<c-p>', function() require('fzf-lua').files() end, { desc = 'Fzf [F]iles' })
vim.keymap.set('n', '<c-l>', function() require('fzf-lua').live_grep_glob() end, { desc = 'Fzf [L]ive Grep' })
vim.keymap.set('n', '<c-g>', function() require('fzf-lua').grep_project() end, { desc = 'Fzf [G]rep Project' })
vim.keymap.set('n', '<F1>', function() require('fzf-lua').help_tags() end, { desc = 'Fzf Help Tags' })
