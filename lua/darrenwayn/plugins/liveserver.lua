local liveserver_setup, liveserver = pcall(require, "liveserver")
if not liveserver_setup then
	return
end

liveserver.setup({})
