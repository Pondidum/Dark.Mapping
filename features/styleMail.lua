local addon, ns = ...

local core = Dark.core
local style = core.style

ns.features.styleMail = function(model)

	local mail = model.icons.mail
	local map = model.map

	mail:SetPoint("TOPRIGHT", map, "BOTTOMRIGHT", 0, -ns.config.spacing)
	mail:SetSize(15, 15)

	style.addShadow(mail)
	style.addBackground(mail)

end
