local mycolor = "kanagawa"

local colorschemes = {

    onedark = {
        path = "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({style="darker"})
            vim.cmd.colorscheme "onedark"
        end,
    },

    kanagawa = {
        path = "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd.colorscheme "kanagawa"
        end,
    },

    catppuccin_default = {
        path = "catppuccin/nvim",
        config = function()
            vim.cmd.colorscheme "catppuccin"
        end,
    },

    catppuccin2 = {
        path = "catppuccin/nvim",
        config = function()
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
            vim.cmd.colorscheme "catppuccin"
        end,
    },

    tokyonight = {
        path = "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({style="night"})
            vim.cmd.colorscheme "tokyonight"
        end,
    },

    gruvbox = {
        path = "ellisonleao/gruvbox.nvim",
        config = function()
            require("gruvbox").setup({contrast="hard"})
            vim.cmd.colorscheme "gruvbox"
        end,
    },

    gruvbox_morhetz = {
        path = "morhetz/gruvbox",
        config = function()
            vim.cmd.colorscheme "gruvbox"
        end,
    },

    oxocarbon = {
        path = "nyoom-engineering/oxocarbon.nvim",
        config = function()
            vim.cmd.colorscheme "oxocarbon"
        end,
    },

    material = {
        path = "marko-cerovac/material.nvim",
        config = function()
            vim.g.material_style = "deep ocean"
            require("material").setup({high_visibility = { darker = true }})
            vim.cmd.colorscheme "material"
        end,
    },

    vscode = {
        path = "Mofiqul/vscode.nvim",
        config = function()
            require("vscode").load()
        end,
    },

    monokai = {
        path = "tanvirtin/monokai.nvim",
        config = function()
            require("monokai").setup({high_visibility = { darker = true }})
            vim.cmd.colorscheme "monokai"
        end,
    },

}


return {
    colorschemes[mycolor].path,
    name = mycolor,
    lazy = false,
	priority = 1000,
	config = function()
        vim.cmd([[set termguicolors]])
        vim.cmd([[set cursorline]])
        colorschemes[mycolor].config()
	end,
}
