local addon, ns = ...

local core = Dark.core
local style = core.style
local layout = core.layout

ns.features.add(function(model)

	local container = CreateFrame("Frame", nil, UIParent)

	container:SetPoint("LEFT", model.map, "LEFT", 0, 0)
	container:SetPoint("TOPRIGHT", model.notificationContainer, "BOTTOMRIGHT", 0, -ns.config.spacing)
	container:SetHeight(20)

	style.addShadow(container)

	layout.init(container, {})

	container.add(QueueStatusMinimapButton)
	QueueStatusMinimapButton:SetParent(container)


end)