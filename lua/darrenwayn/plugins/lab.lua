local lab_setup, lab = pcall(require, "lab")
if not lab_setup then
	return
end

lab.setup({
	code_runner = {
		enabled = true,
	},
	queck_data = {
		enabled = true,
	},
})
