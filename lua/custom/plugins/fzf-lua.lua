return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    -- calling `setup` is optional for customization
    require('fzf-lua').setup {}
  end,
  vim.keymap.set('n', '<c-\\>', "<cmd>lua require('fzf-lua').buffers()<CR>", {}),
  vim.keymap.set('n', '<c-k>', "<cmd>lua require('fzf-lua').builtin()<CR>", {}),
  vim.keymap.set('n', '<c-p>', "<cmd>lua require('fzf-lua').files()<CR>", {}),
  vim.keymap.set('n', '<c-l>', "<cmd>lua require('fzf-lua').live_grep_glob()<CR>", {}),
  vim.keymap.set('n', '<c-g>', "<cmd>lua require('fzf-lua').grep_project()<CR>", {}),
  vim.keymap.set('n', '<F1>', "<cmd>lua require('fzf-lua').help_tags()<CR>", {}),

  --  require('fzf-lua').utils.info '|<C-\\> buffers|<C-p> files|<C-g> grep|<C-l> live grep|<C-k> builtin|<F1> help|',
}
