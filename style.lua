local core = Dark.core
local style = core.style

local map = Minimap
local header = MinimapZoneTextButton
local headerText = MinimapZoneText
local zoomIn = MinimapZoomIn
local zoomOut = MinimapZoomOut


local hideBlizzard = function()

  MinimapBorderTop:Hide()
  MiniMapWorldMapButton:Hide()
  MinimapBackdrop:Hide()

end

hideBlizzard()
