local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensure_installed = {'eslint', 'rust_analyzer', 'pylsp'},
  handlers = {
    lsp_zero.default_setup,
    }
})

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'E226', 'E501', 'W291', 'W503', 'W504'},
          -- maxLineLength = 100
        }
      }
    }
  }
}
