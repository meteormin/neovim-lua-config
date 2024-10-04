local keyMapper = require('utils.keyMapper').mapKey

return {
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed = {
          "clangd", "lua_ls", "eslint", "gopls",
          "jsonls", "marksman", "yamlls"
        }
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.gopls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.eslint.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.marksman.setup({})
      lspconfig.yamlls.setUP({})

    --   vim.lsp.buf.hover
    --   vim.lsp.buf.definition
    --   vim.lsp.buf.code_action
    keyMapper('K', vim.lsp.buf.hover)
    keyMapper('gd', vim.lsp.buf.definition)
    keyMapper('<leader>ca', vim.lsp.buf.code_action)

    end,
  }
}
