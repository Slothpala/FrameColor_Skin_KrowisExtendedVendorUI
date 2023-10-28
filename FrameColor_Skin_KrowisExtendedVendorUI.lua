local info = {
    moduleName = "Krowi_ExtendedVendorUI",
    moduleDesc = "This module has no settings. It follows the settings of the MerchantFrame module.",
    followModule = "MerchantFrame",
}

local module = FrameColor_CreateSkinModule(info)

local SetDesaturation = SetDesaturation
local SetVertexColor = SetVertexColor

function module:Recolor(...)
    local color, _, _, desaturation = ...
    for _ ,v in pairs({
        KrowiEVU_BottomExtensionLeftBorder,
        KrowiEVU_BottomExtensionMidBorder,
        KrowiEVU_BottomExtensionRightBorder,
    }) do 
        v:SetDesaturation(desaturation)
        v:SetVertexColor(color.r, color.g, color.b)
    end
end

