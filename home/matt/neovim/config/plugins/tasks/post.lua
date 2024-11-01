local overseer = require("overseer")

local rojoProjects = vim.fs.find({
	"dev.project.json",
	"test.project.json",
	"default.project.json",
}, {
	upward = true,
	stop = vim.loop.os_homedir(),
	path = vim.fs.dirname(vim.api.nvim_buf_get_name(0)),
})

if #rojoProjects > 0 then
	overseer.register_template({
		name = "Start Rojo Server",
		priority = 0,
		builder = function()
			return {
				cmd = { "rojo" },
				args = { "serve" },
				name = "Rojo Server",
			}
		end,
	})
end
