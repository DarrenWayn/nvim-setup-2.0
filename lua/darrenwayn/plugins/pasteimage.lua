local pasteimage_setup, pasteimage = pcall(require, "pasteimage")
if not pasteimage_setup then
	return
end

pasteimage.setup({
	"*",
})
