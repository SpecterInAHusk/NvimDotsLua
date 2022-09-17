require('onedark').setup {
	style = 'deep',
	transparent = true,
	ending_tildes = true,
	code_style = {
		comments = 'none',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
	},

	-- Lualine options --
    lualine = {
        transparent = false, -- lualine center bar transparency
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups
}
