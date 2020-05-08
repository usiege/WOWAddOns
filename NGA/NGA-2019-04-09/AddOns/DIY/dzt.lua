MainMenuBarArtFrameBackground:Hide()--隐藏动作条背景
MainMenuBarArtFrame.LeftEndCap:Hide()--隐藏左边狮鹫
MainMenuBarArtFrame.RightEndCap:Hide()--隐藏右边狮鹫
--超出距离技能栏变红
hooksecurefunc("ActionButton_OnUpdate", function(self, elapsed) 
   if ( self.rangeTimer == TOOLTIP_UPDATE_TIME and self.action) then 
      local range = false 
      if ( IsActionInRange(self.action) == false ) then 
         getglobal(self:GetName().."Icon"):SetVertexColor(1, 0, 0) 
         getglobal(self:GetName().."NormalTexture"):SetVertexColor(1, 0, 0) 
         range = true 
      end; 
      if ( self.range ~= range and range == false ) then 
         ActionButton_UpdateUsable(self) 
      end; 
      self.range = range 
   end 
end)
StatusTrackingBarManager:SetScale(0.5) --经验能量条缩放
StatusTrackingBarManager.SingleBarLarge:SetAlpha(0) --艾泽里特边框隐藏
for i=1, 12 do _G["ActionButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomLeftButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomLeftButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomRightButton"..i.."NormalTexture"]:SetTexture("") end 
for i=7, 12 do _G["MultiBarBottomRightButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarLeftButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarLeftButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarRightButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarRightButton"..i.."FloatingBG"]:SetTexture("") end
--隐藏系统菜单
local dummy=function() end
MicroButtonAndBagsBar:Hide();
MicroButtonAndBagsBar.Show = dummy
CharacterMicroButton:ClearAllPoints()
CharacterMicroButton:SetPoint("CENTER",UIParent,"BOTTOMRIGHT",-275,-20)
CharacterMicroButton.SetPoint = dummy
