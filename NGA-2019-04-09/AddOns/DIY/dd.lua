--[打断提示]

if GetLocale() == 'zhTW' then
  L_ANNOUNCE_INTERRUPTED = "打斷>>%s<<%s"
elseif GetLocale() == 'zhCN' then
  L_ANNOUNCE_INTERRUPTED = "我打断了<%s>的%s"
else
  return
end
--驱散提示
if GetLocale() == 'zhTW' then
  L_ANNOUNCE_DISPEL = "驱散>>%s<<%s"
elseif GetLocale() == 'zhCN' then
  L_ANNOUNCE_DISPEL = "我驱散了<%s>的%s"
else
  return
end
--偷取
if GetLocale() == 'zhTW' then
  L_ANNOUNCE_STOLEN = "偷取>>%s<<%s"
elseif GetLocale() == 'zhCN' then
  L_ANNOUNCE_STOLEN = "我偷取了<%s>的%s"
else
  return
end
--频道侦测
CheckChatInt = function(warning)
  if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
    return "INSTANCE_CHAT"
  elseif IsInRaid(LE_PARTY_CATEGORY_HOME) then
    if warning and (UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") or IsEveryoneAssistant()) then
      return "RAID_WARNING"
    else
      return "RAID"
    end
  elseif IsInGroup(LE_PARTY_CATEGORY_HOME) then
    return "PARTY"
  end
  return "YELL"
end

--打断通告
local function X(self, event)

    local timestamp, eventType, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = CombatLogGetCurrentEventInfo()

    if eventType=="SPELL_INTERRUPT" then   --打断
        local spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSchool = select(12, CombatLogGetCurrentEventInfo())
        if sourceName==UnitName("player") or sourceName==UnitName("pet")then
            SendChatMessage(string.format(L_ANNOUNCE_INTERRUPTED, destName, GetSpellLink(extraSpellId)), CheckChatInt())
        end
    elseif eventType=="SPELL_DISPEL" then  --驱散
		local spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSchool, auraType = select(12, CombatLogGetCurrentEventInfo())
        if sourceName==UnitName("player") or sourceName==UnitName("pet")then
            SendChatMessage(string.format(L_ANNOUNCE_DISPEL, destName, GetSpellLink(extraSpellId)), CheckChatInt())
        end
    elseif eventType=="SPELL_STOLEN" then  --法术窃取
		local spellId, spellName, spellSchool, extraSpellId, extraSpellName, extraSchool, auraType = select(12, CombatLogGetCurrentEventInfo())
        if sourceName==UnitName("player") then
            SendChatMessage(string.format(L_ANNOUNCE_STOLEN, destName, GetSpellLink(extraSpellId)), CheckChatInt())
        end		
    end  
end

local frame = CreateFrame("FRAME")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
frame:SetScript("OnEvent", X)
