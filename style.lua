local core = Dark.core
local style = core.style

local map = Minimap
local header = MinimapZoneTextButton
local headerText = MinimapZoneText
local zoomIn = MinimapZoomIn
local zoomOut = MinimapZoomOut


local styleMap = function()

  --CLOCK
  local clock = TimeManagerClockButton
  local clockBorder, clockText, clockAlarmTexture = clock:GetRegions()

  clock:SetPoint("TOPLEFT", map, "BOTTOMLEFT", 0, -5)
  clock:SetHeight(15)

  style.addShadow(clock)
  style.addBackground(clock)

  clockBorder:Hide()
  clockAlarmTexture:SetAllPoints(clock)
  clockText:SetAllPoints(clock)

end

local hideBlizzard = function()

  MinimapBorderTop:Hide()
  MiniMapWorldMapButton:Hide()
  MinimapBackdrop:Hide()

end


hideBlizzard()
makeSquare()
styleMap()
enableMouseScroll()