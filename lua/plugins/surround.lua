return {
    "kylechui/nvim-surround",
    version = "*", -- Use latest stable version
    event = "VeryLazy",
    config = function()
    require("nvim-surround").setup({})
    end
}
