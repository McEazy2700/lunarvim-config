lvim.keys.normal_mode["<M-f>"] = "<cmd>2 ToggleTerm dimection=float size=120 name='Floating Term'<cr>"
lvim.keys.term_mode["<M-f>"] = "<cmd>2 ToggleTerm direction=float size=120 name='Floating Term'<cr>"
lvim.keys.normal_mode["<M-v>"] = "<cmd>3 ToggleTerm direction=vertical size=100 name='Vertical Term'<cr>"
lvim.keys.term_mode["<M-v>"] = "<cmd>3 ToggleTerm direction=vertical size=100 name='Vertical Term'<cr>"
lvim.keys.normal_mode["<M-h>"] = "<cmd>4 ToggleTerm direction=horizontal size=30 name='Horizontal Term'<cr>"
lvim.keys.term_mode["<M-h>"] = "<cmd>4 ToggleTerm direction=horizontal size=30 name='Horizontal Term'<cr>"
lvim.keys.normal_mode["<leader>x"] = "<cmd>BufferKill<cr>"
lvim.keys.normal_mode["[b"] = "<cmd>BufferLineCyclePrev<cr>"
lvim.keys.normal_mode["]b"] = "<cmd>BufferLineCycleNext<cr>"
lvim.lsp.buffer_mappings.normal_mode["gd"] = { "<cmd>Telescope lsp_definitions<cr>", "Goto lsp definition" }
lvim.lsp.buffer_mappings.normal_mode["gr"] = { "<cmd>Telescope lsp_references<cr>", "Goto lsp references" }
lvim.lsp.buffer_mappings.normal_mode["[d"] = { function()
  vim.diagnostic.goto_prev()
  vim.diagnostic.open_float()
end, "{Prev lsp diagnostics}" }
lvim.lsp.buffer_mappings.normal_mode["]d"] = { function()
  vim.diagnostic.goto_next()
  vim.diagnostic.open_float()
end, "{Prev lsp diagnostics}" }

lvim.builtin.which_key.mappings["f"] = {
  name = "Find",
  f = { "<cmd>Telescope find_files<cr>", "Find Files" },
  g = { "<cmd>Telescope git_files<cr>", "Find Git Files" },
  b = { "<cmd>Telescope buffers<cr>", "Find Open Buffers" },
  c = { "<cmd>Telescope colorscheme<cr>", "Find Colorschemes" },
  w = { "<cmd>Telescope live_grep<cr>", "Find Word" },
}
