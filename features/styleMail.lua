local addon, ns = ...

local core = Dark.core
local style = core.style

ns.features.styleMail = function(model)

	local map = model.map
	local mail = model.mail.button
	local mailBorder = model.mail.border

	mail:SetPoint("TOPRIGHT", map, "BOTTOMRIGHT", 0, -ns.config.spacing)
	mail:SetSize(15, 15)

	style.addShadow(mail)
	style.addBackground(mail)

	mailBorder:Hide()

end
