return {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    config = function()
        require("ibl").setup({
            debounce = 100,
            indent = { char = "|" },
            whitespace = {
                highlight = { "Whitespace", "NonText" },
                remove_blankline_trail = true
            },
            scope = {
                enabled = true,
                show_end = true,
                injected_languages = true
            }
        })
    end
}
