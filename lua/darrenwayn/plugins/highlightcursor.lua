local highlightcursor_setup, highlightcursor = pcall(require, "nvim-cursorline")
if not highlightcursor_setup then
	return
end

highlightcursor.setup({
	cursorline = {
		enable = true,
		timeout = 1000,
		number = false,
	},
	cursorword = {
		enable = true,
		min_length = 3,
		hl = { underline = true },
	},
})
