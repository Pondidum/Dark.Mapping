local addon, ns = ...

local core = Dark.core
local style = core.style
local events = core.events.new()

ns.features.add(function(model)

	local map = model.map
	local container = model.notificationContainer
	local tracking = model.tracking 

	local button = model.tracking.button
	local icon = model.tracking.icon
	
	style.addShadow(button)
	style.applyBackgroundTo(button)

	tracking.background:Hide()
	tracking.border:Hide()

	icon:ClearAllPoints()
	icon:SetAllPoints(button)

	tracking.overlay:SetHighlightTexture(nil)

	button:SetParent(container)
	container.add(button)

end)
