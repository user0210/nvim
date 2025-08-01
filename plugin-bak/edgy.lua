return {
{
	"folke/edgy.nvim",
	opts = {
		exit_when_last = true,
		keys = {
			-- increase width
			["<A-l>"] = function(win)
				win:resize("width", 1)
			end,
			-- decrease width
			["<A-h"] = function(win)
				win:resize("width", -1)
			end,
			-- increase height
			["<A-k>"] = function(win)
				win:resize("height", 1)
			end,
			-- decrease height
			["<A-j>"] = function(win)
				win:resize("height", -1)
			end,
     },
	},
},
{
	"akinsho/bufferline.nvim",
	optional = true,
	opts = function()
		local Offset = require("bufferline.offset")
		-- if not Offset.edgy then
			local get = Offset.get
			Offset.get = function()
				if package.loaded.edgy then
					local layout = require("edgy.config").layout
					local ret = { left = "", left_size = 0, right = "", right_size = 0 }
					for _, pos in ipairs({ "left", "right" }) do
						local sb = layout[pos]
						if sb and #sb.wins > 0 then
							local title = " Sidebar" .. string.rep(" ", sb.bounds.width - 8)
							ret[pos] = "%#WinSeparator#" .. title .. "%*" .. "%#WinSeparator# %*"
							ret[pos .. "_size"] = sb.bounds.width
						end
					end
					ret.total_size = ret.left_size + ret.right_size
					if ret.total_size > 0 then
						return ret
					end
				end
				return get()
			end
			Offset.edgy = true
		-- end
	end,
}
}
