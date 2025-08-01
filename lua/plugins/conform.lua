return {
  'stevearc/conform.nvim',
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = true,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      if disable_filetypes[vim.bo[bufnr].filetype] then
        return nil
      else
        return {
          timeout_ms = 500,
          lsp_format = 'fallback',
        }
      end
    end,
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      -- You can use 'stop_after_first' to run the first available formatter from the list
      css = { 'prettierd', 'prettier', stop_after_first = true },
      html = { 'prettierd', 'prettier', stop_after_first = true },

      typescript = { 'prettierd', 'prettier', 'eslint_d', 'eslint', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', 'eslint_d', 'eslint', stop_after_first = true },
      javascript = { 'prettierd', 'prettier', 'eslint_d', 'eslint', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', 'eslint_d', 'eslint', stop_after_first = true },
      vue = { 'prettierd', 'prettier', 'eslint_d', 'eslint', stop_after_first = true },
    },
  },
}
