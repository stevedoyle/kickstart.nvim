-- Markdown preview support
--  See https://github.com/iamcco/markdown-preview.nvim
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

-- Run the plugin's own installer (handles the platform-specific build step:
-- npm install on Linux/macOS, downloads a prebuilt binary via install.cmd on Windows)
-- after it is installed or updated. See `:help mkdp#util#install`.
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name = ev.data.spec.name
    local kind = ev.data.kind
    if name == 'markdown-preview.nvim' and (kind == 'install' or kind == 'update') then vim.fn['mkdp#util#install']() end
  end,
})

vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [P]review toggle' })
