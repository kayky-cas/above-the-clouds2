-- Example for neo-tree.nvim
return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys = {
        { "<leader>e", "<cmd>Neotree toggle float<cr>", desc = "NeoTree" },
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                follow_current_file = {
                    enabled = true, -- This will find and focus the file in the active buffer every time
                },
            }
        })
    end,
}
