-- Markdown preview support
--  See https://github.com/iamcco/markdown-preview.nvim
vim.pack.add { 'https://github.com/iamcco/markdown-preview.nvim' }

-- Run the plugin's install step (npm install) after it is installed or updated
vim.api.nvim_create_autocmd('PackChanged', {
  callback = function(ev)
    local name = ev.data.spec.name
    local kind = ev.data.kind
    if name == 'markdown-preview.nvim' and (kind == 'install' or kind == 'update') then
      local result = vim.system({ 'npm', 'install' }, { cwd = vim.fs.joinpath(ev.data.path, 'app') }):wait()
      if result.code ~= 0 then
        local output = result.stderr ~= '' and result.stderr or result.stdout
        vim.notify(('Build failed for %s:\n%s'):format(name, output or 'No output from build command.'), vim.log.levels.ERROR)
      end
    end
  end,
})

vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', { desc = '[M]arkdown [P]review toggle' })
