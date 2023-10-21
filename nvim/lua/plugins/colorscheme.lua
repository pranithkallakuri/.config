return {
	--"navarasu/onedark.nvim",
    --"rebelot/kanagawa.nvim",
    --"folke/tokyonight.nvim",
    --"ellisonleao/gruvbox.nvim",
    --"morhetz/gruvbox",
    "catppuccin/nvim",
    --"nyoom-engineering/oxocarbon.nvim",
    --"marko-cerovac/material.nvim",
    --"Mofiqul/vscode.nvim",
    --"tanvirtin/monokai.nvim",
    --
    --name = "onedark",
    --name = "kanagawa",
    --name = "tokyonight",
    --name = "gruvbox",
    name = "catppuccin",
    --name = "oxocarbon",
    --name = "material",
    --name = "vscode",
    --name = "monokai",
    --
    lazy = false,
	priority = 1000,
	config = function()
        vim.cmd([[set termguicolors]])
        vim.cmd([[set cursorline]])
        --require("kanagawa").setup({theme="dragon", background={dark="dragon"}})
        --require("tokyonight").setup({style="night"})
        --require("onedark").setup({style="darker"})
        --require("gruvbox").setup({contrast="hard"})
        --
        require("catppuccin").setup({
            term_colors=true,
            color_overrides = {
                all = {
                    base = "#000000",
                    mantle = "#000000",
                    crust = "#000000",
                },
            },
            highlight_overrides = {
                all = function(colors)
                    return {
                        StatusLine = {bg = "#1c1c1c"},
                        VertSplit = {bg = "#1c1c1c"},
                        CursorLine = {bg = "#121212"}
                    }
                end,
            },
        })
        
        --vim.g.material_style = "deep ocean"
        --require("material").setup({high_visibility = { darker = true }})
        --require("monokai").setup({high_visibility = { darker = true }})
        --
        --vim.cmd.colorscheme "onedark"
        --vim.cmd.colorscheme "kanagawa"
        --vim.cmd.colorscheme "tokyonight"
        --vim.cmd.colorscheme "gruvbox"
        vim.cmd.colorscheme "catppuccin"
        --vim.cmd.colorscheme "oxocarbon"
        --vim.cmd.colorscheme "material"
        --require("vscode").load()
        --vim.cmd.colorscheme "monokai"

	end,
}
