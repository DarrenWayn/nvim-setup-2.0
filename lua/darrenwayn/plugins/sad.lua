-- import nvim-autopairs safely
local sad_setup, sad = pcall(require, "sad")
if not sad_setup then
	return
end

-- import telescope actions safely
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
	return
end

sad.setup({
	diff = "delta", -- you can use `diff`, `diff-so-fancy`
	ls_file = "fd", -- also git ls_file
	exact = false, -- exact match
	vsplit = true, -- split sad window the screen vertically, when set to number
	-- it is a threadhold when window is larger than the threshold sad will split vertically,
	height_ratio = 0.6, -- height ratio of sad window when split horizontally
	width_ratio = 0.6, -- height ratio of sad window when split vertically	},
})
