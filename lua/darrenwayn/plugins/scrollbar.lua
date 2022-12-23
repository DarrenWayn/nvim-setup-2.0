local scrollbar_setup, scrollbar = pcall(require, "scrollbar")
if not scrollbar_setup then
	return
end

local colors = require("neosolarized")

scrollbar.setup({
	handle = {
		color = colors.bg_highlight,
	},
	marks = {
		Search = { color = colors.bg_highlight },
		Error = { color = colors.error },
		Warn = { color = colors.warning },
		Info = { color = colors.info },
		Hint = { color = colors.hint },
		Misc = { color = colors.bg_highlight },
	},
})
