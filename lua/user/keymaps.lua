lvim.leader = "space"

local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

-- Normal --
-- Better window navigation
keymap("n", "<m-h>", "<C-w>h", opts)
keymap("n", "<m-j>", "<C-w>j", opts)
keymap("n", "<m-k>", "<C-w>k", opts)
keymap("n", "<m-l>", "<C-w>l", opts)
keymap("n", "<m-tab>", "<c-6>", opts)

-- Trouble nvim
lvim.builtin.which_key.mappings["x"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}

-- Test nvim
lvim.builtin.which_key.mappings["t"] = {
  name = "Test",
  f = { "<cmd>TestFile<cr>", "Test File" },
  l = { "<cmd>TestLast<cr>", "Test Last" },
  n = { "<cmd>TestNearest<cr>", "Test Nearest" },
  s = { "<cmd>TestSuite<cr>", "Test Suite" },
  v = { "<cmd>TestVisit<cr>", "Test Visit" },
}
