local showsize_setup, showsize = pcall(require, "import_cost")
if not showsize_setup then
	return
end

showsize.setup({
	"*",
})
