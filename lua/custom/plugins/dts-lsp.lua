-- Language Server for Device Tree Source (DTS) files
--  See https://github.com/igor-prusov/dts-lsp
--
-- Requires the `dts-lsp` binary to be installed and on your PATH:
--   cargo install dts-lsp
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'dts', 'dtsi' },
  callback = function(ev)
    vim.lsp.start {
      name = 'dts-lsp',
      cmd = { 'dts-lsp' },
      root_dir = vim.fs.dirname(vim.fs.find({ '.git' }, { upward = true, path = vim.api.nvim_buf_get_name(ev.buf) })[1]),
    }
  end,
})
