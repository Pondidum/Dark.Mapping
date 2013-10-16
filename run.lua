local addon, ns = ...

local run = function()
	
	local model = ns.model.new()

	for name, feature in pairs(ns.features) do
		feature(model)
	end

end

run()