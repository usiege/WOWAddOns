local E, L, V, P, G = unpack(select(2, ...))
local DT = E:GetModule('DataTexts')

local strjoin = string.join
local UnitStat = UnitStat
local ITEM_MOD_STRENGTH_SHORT = ITEM_MOD_STRENGTH_SHORT
local LE_UNIT_STAT_STRENGTH = LE_UNIT_STAT_STRENGTH
local STAT_CATEGORY_ATTRIBUTES = STAT_CATEGORY_ATTRIBUTES
local displayNumberString, lastPanel = ''

local function OnEvent(self)
	self.text:SetFormattedText(displayNumberString, ITEM_MOD_STRENGTH_SHORT, UnitStat("player", LE_UNIT_STAT_STRENGTH))

	lastPanel = self
end

local function ValueColorUpdate(hex, r, g, b)
	displayNumberString = strjoin("", "%s: ", hex, "%.f|r")

	if lastPanel ~= nil then
		OnEvent(lastPanel)
	end
end
E['valueColorUpdateFuncs'][ValueColorUpdate] = true

DT:RegisterDatatext('Strength', STAT_CATEGORY_ATTRIBUTES, {"UNIT_STATS", "UNIT_AURA"}, OnEvent, nil, nil, nil, nil, ITEM_MOD_STRENGTH_SHORT)

