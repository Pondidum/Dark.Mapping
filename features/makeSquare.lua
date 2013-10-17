local addon, ns = ...

local core = Dark.core

ns.features.makeSquare = function(model)

  model.map:SetMaskTexture(core.textures.normal)

  function GetMinimapShape() 
    return "SQUARE" 
  end

end
