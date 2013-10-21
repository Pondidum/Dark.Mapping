local addon, ns = ...

local init = function()

	local features = {}

	ns.features = {
		
		add = function(action)
			table.insert(features, action)
		end,

		process = function(model)

			for i, feature in ipairs(features) do
				feature(model)
			end

		end,

	}
	
end


init()