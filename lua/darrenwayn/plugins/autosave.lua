-- local autosave_setup, autosave = pcall(require, "auto-save")
-- if not autosave_setup then
-- 	return
-- end
--
-- autosave.setup({
-- 	enabled = true,
-- 	execution_message = "AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"),
-- 	events = { "InsertLeave", "TextChanged" },
-- 	conditions = {
-- 		exists = true,
-- 		modifiable = true,
-- 	},
-- 	write_all_buffers = false,
-- 	on_off_commands = true,
-- 	clean_command_line_interval = 0,
-- 	debounce_delay = 135,
-- })