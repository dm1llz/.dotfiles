local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
   {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    undo = {
                        mappings = {
                            n = {
                                ["<C-cr>"] = require("telescope-undo.actions").restore
                            }
                        },
                        side_by_side = true
                    },
                },
            })
            require("telescope").load_extension("undo")
        end,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim"
        },
        tag = "0.1.2"
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    { "nvim-treesitter/playground" },
    { "nvim-treesitter/nvim-treesitter-context" },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},             -- Required
            {"williamboman/mason.nvim"},           -- Optional
            {"williamboman/mason-lspconfig.nvim"}, -- Optional

            -- Autocompletion
            {"hrsh7th/nvim-cmp"},     -- Required
            {"hrsh7th/cmp-nvim-lsp"}, -- Required
            {"L3MON4D3/LuaSnip"},     -- Required
        }
    },
    { "ThePrimeagen/harpoon" },
    { "tpope/vim-fugitive" },
    { "folke/zen-mode.nvim" },
    { "github/copilot.vim" },
    { "m4xshen/hardtime.nvim", opts={} },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            opts = {}
        }
    },
    { "HiPhish/rainbow-delimiters.nvim" },
    { "windwp/nvim-ts-autotag" },
    { "m4xshen/autoclose.nvim" },
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },
    { "nvim-tree/nvim-tree.lua" },
    { "lewis6991/gitsigns.nvim" },
    { "sbdchd/neoformat" },
})
