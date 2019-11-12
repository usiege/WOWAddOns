-- This file is executed at the end of addon load

-- Talent tabs
for i=1, (TalentFrame.numTabs or 0) do
	local tabName = "TalentFrameTab"..i;
	_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
end

-- Move talent stuff
TalentFrameTalentPoints:SetPoint("RIGHT", "TalentFrameTalentPointsText", "LEFT", -3, 0);
TalentFrameTalentPointsText:SetPoint("BOTTOMRIGHT", "TalentFrame", "BOTTOMLEFT", 252, 84);
TalentFrameSpentPoints:SetPoint("TOP", "TalentFramePointsMiddle", "TOP", 0, -2);