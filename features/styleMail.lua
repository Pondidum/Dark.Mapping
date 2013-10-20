local addon, ns = ...

local core = Dark.core
local style = core.style
local events = core.events.new()

ns.features.styleMail = function(model)

	local map = model.map

	local container = CreateFrame("Frame", nil, model.map)
	container:SetPoint("TOPRIGHT", map, "BOTTOMRIGHT", 0, -ns.config.spacing)
	container:SetSize(15, 15)

	local texture = container:CreateTexture()
	texture:SetAllPoints(container)
	texture:SetTexture(ns.config.mailIcon)
	
	style.addShadow(container)
	style.applyBackgroundTo(container)

	local button = model.mail.button
	local border = model.mail.border
	local icon = model.mail.icon

	button:SetAllPoints(container)
	border:Hide()

	icon:SetAllPoints(container)
	icon:SetTexture(nil)

	events.register("UPDATE_PENDING_MAIL", function()
		
		if HasNewMail() then
			texture:SetVertexColor(1.0, 1.0, 1.0)
		else
			texture:SetVertexColor(0.5, 0.5, 0.5)
		end

	end)

end
