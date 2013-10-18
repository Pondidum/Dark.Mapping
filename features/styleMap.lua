local addon, ns = ...

local core = Dark.core
local style = core.style

ns.features.styleMap = function(model)
	
	local map = model.map
	local header = model.header
	local headerText = model.headerText

	--MAP
	map:SetPoint("TOPLEFT", header, "BOTTOMLEFT", 0, -ns.config.spacing)
	map:SetPoint("TOPRIGHT", header, "BOTTOMRIGHT", 0, -ns.config.spacing)

	style.addBackground(map)
	style.addShadow(map)


	--HEADER
	header:SetWidth(Minimap:GetHeight())
	header:ClearAllPoints()
	header:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -10, -10)
	header:SetHeight(15)

	headerText:SetPoint("CENTER", header, "CENTER", 0, 0)

	style.addBackground(header)
	style.addShadow(header)

end
