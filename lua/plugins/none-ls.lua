return {
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.prettier,
          null_ls.builtins.formatting.isort,
          null_ls.builtins.formatting.black,
          require("none-ls.diagnostics.eslint_d"),
          null_ls.builtins.formatting.clang_format,
          --require("none_ls.diagnostics.cpplint"),
        },
      })
      vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format)
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    config = function()
      require("mason-null-ls").setup({
        ensure_installed = {
          "stylua",
          "prettier",
          "isort",
          "black",
          "eslint_d",
          "clang_format",
          "cpplint",
        },
        automatic_installation = true,
      })
    end,
  },
}
