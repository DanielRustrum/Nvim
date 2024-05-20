local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
    },
    auto_install = true,
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },
})
