local addon, ns = ...

local run = function()
	
	for k,v in pairs(ns.features) do
		v()
	end

end

run()