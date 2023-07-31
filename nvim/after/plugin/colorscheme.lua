require("catppuccin").setup({
    transparent_background = false, -- disables setting the background color.
    integrations = {
        dap = {
            enabled = true,
            enable_ui = true
        },
        gitsigns = true,
        harpoon = true,
        lsp_trouble = true,
        markdown = true,
        mason = true,
        rainbow_delimiters = true,
        telescope = {
            enabled = true,
        },
        treesitter = true,
        treesitter_context = true
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
