local addon, ns = ...

ns.features.hideBlizzard = function(model)

	model.border:Hide()
	model.background:Hide()
	model.buttons.worldMap:Hide()

end
