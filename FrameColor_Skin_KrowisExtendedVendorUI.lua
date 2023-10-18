local info = {
    moduleName = "Krowi_ExtendedVendorUI",
    color1 = {
        name = "Frame",
        desc = "",
    },
}

local module = FrameColor_CreateSkinModule(info)

local SetDesaturation = SetDesaturation
local SetVertexColor = SetVertexColor

function module:OnEnable()
    local main_color = self:GetColor1()
    self:Recolor(main_color, 1)
end

function module:OnDisable()
    local color = {r=1,g=1,b=1,a=1}
    self:Recolor(color, 0)
end

function module:Recolor(main_color, desaturation)
    for _ ,v in pairs({
        KrowiEVU_BottomExtensionLeftBorder,
        KrowiEVU_BottomExtensionMidBorder,
        KrowiEVU_BottomExtensionRightBorder,
    }) do 
        v:SetDesaturation(desaturation)
        v:SetVertexColor(main_color.r, main_color.g, main_color.b)
    end
end

