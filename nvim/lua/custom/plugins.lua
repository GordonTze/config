local plugins = {
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
    config = function(_)
      vim.g.crystal_auto_format = 1
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      },
    },
  },
  {
    "tikhomirov/vim-glsl",
    ft = "glsl",
  },
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = { 'nvim-lua/plenary.nvim' },
  }
}

return plugins
