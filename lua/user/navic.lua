require("nvim-navic").setup {
    icons = {
        File          = " ",
        Module        = " ",
        Namespace     = " ",
        Package       = " ",
        Class         = " ",
        Method        = " ",
        Property      = " ",
        Field         = " ",
        Constructor   = " ",
        Enum          = "練",
        Interface     = "練",
        Function      = " ",
        Variable      = " ",
        Constant      = " ",
        String        = " ",
        Number        = " ",
        Boolean       = "◩ ",
        Array         = " ",
        Object        = " ",
        Key           = " ",
        Null          = "ﳠ ",
        EnumMember    = " ",
        Struct        = " ",
        Event         = " ",
        Operator      = " ",
        TypeParameter = " ",
    },
    highlight = true,
    separator = " > ",
    depth_limit = 0,
    depth_limit_indicator = "..",
}

local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'NavicIconsFile',         		{ fg = colors.base0Da, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsModule',       		{ fg = colors.base0Ea, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsNamespace',    		{ fg = colors.base0Fa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsPackage',      		{ fg = colors.base08a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsClass',        		{ fg = colors.base09a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsMethod',       		{ fg = colors.base0Aa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsProperty',     		{ fg = colors.base0Ba, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsField',        		{ fg = colors.base0Ca, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsConstructor',  		{ fg = colors.base0Da, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsEnum',         		{ fg = colors.base0Ea, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsInterface',    		{ fg = colors.base0Fa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsFunction',     		{ fg = colors.base08a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsVariable',     		{ fg = colors.base09a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsConstant',     		{ fg = colors.base0Aa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsString',       		{ fg = colors.base0Ba, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsNumber',       		{ fg = colors.base0Ca, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsBoolean',      		{ fg = colors.base0Da, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsArray',        		{ fg = colors.base0Ea, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsObject',       		{ fg = colors.base0Fa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsKey',          		{ fg = colors.base08a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsNull',         		{ fg = colors.base09a, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsEnumMember',   		{ fg = colors.base0Aa, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsStruct',       		{ fg = colors.base0Ba, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsEvent',        		{ fg = colors.base0Ca, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsOperator',     		{ fg = colors.base0Da, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicIconsTypeParameter',		{ fg = colors.base0Ea, bg = colors.base01a, bold = false })
vim.api.nvim_set_hl(0, 'NavicText',              		{ fg = colors.base03, bg = colors.base01a, italic = true })
vim.api.nvim_set_hl(0, 'NavicSeparator',         		{ fg = colors.base04, bg = colors.base01a, bold = true })
