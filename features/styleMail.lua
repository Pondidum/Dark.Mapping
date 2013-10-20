local addon, ns = ...

local core = Dark.core
local style = core.style

ns.features.styleMail = function(model)

	local map = model.map

	local container = CreateFrame("Frame", nil, model.map)
	container:SetPoint("TOPRIGHT", map, "BOTTOMRIGHT", 0, -ns.config.spacing)
	container:SetSize(15, 15)

	style.addShadow(container)
	style.applyBackgroundTo(container)

	local button = model.mail.button
	local border = model.mail.border
	local icon = model.mail.icon

	button:SetAllPoints(container)
	icon:SetAllPoints(container)
	border:Hide()

end
