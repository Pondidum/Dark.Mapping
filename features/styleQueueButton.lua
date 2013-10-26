local addon, ns = ...

local core = Dark.core
local style = core.style
local events = core.events.new()

ns.features.add(function(model)

	local map = model.map
	local container = model.notificationContainer
	local button = model.buttons.queue


	button:SetParent(container)
	container.add(button)

end)
