lvim.plugins = {
  {
    "ruifm/gitlinker.nvim",
    event = "BufRead",
    config = true,
    dependencies = "nvim-lua/plenary.nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "folke/tokyonight.nvim" },
  { "dracula/vim" },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "vim-test/vim-test",
    cmd = { "TestNearest", "TestFile", "TestSuite", "TestLast", "TestVisit" },
    config = function()
      vim.g["test#strategy"] = "dispatch"
    end,
  },
  -- Disptach for vim-test
  {
    "tpope/vim-dispatch",
    cmd = { "Dispatch" },
  },
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "s", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "S", ":HopWord<cr>", { silent = true })
    end,
  },
}
