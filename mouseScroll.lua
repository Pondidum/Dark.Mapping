local addon, ns = ...

local map = Minimap

local enableMouseScroll = function()

  map:EnableMouseWheel(true)
  map:SetScript("OnMouseWheel", function(self, d)
      if d > 0 then
        zoomIn:Click()
      elseif d < 0 then
        zoomOut:Click()
      end
  end)

end

table.insert(ns.features, enableMouseScroll)
