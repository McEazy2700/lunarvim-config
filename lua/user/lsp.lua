local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  { name = "taplo" },
  {
    name = "prettier",
    args = { "--print-width", "100" },
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
  },
}

local linters = require "lvim.lsp.null-ls.linters"

linters.setup {
  { name = "flake8" },
  { name = "eslint" },
  {
    name = "shellcheck",
    args = { "--severity", "warning" },
  },
}

local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    name = "proselint",
  },
}
