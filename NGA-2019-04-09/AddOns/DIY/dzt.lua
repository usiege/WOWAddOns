MainMenuBarArtFrameBackground:Hide()--���ض���������
MainMenuBarArtFrame.LeftEndCap:Hide()--�������ʨ��
MainMenuBarArtFrame.RightEndCap:Hide()--�����ұ�ʨ��
--�������뼼�������
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
StatusTrackingBarManager:SetScale(0.5) --��������������
StatusTrackingBarManager.SingleBarLarge:SetAlpha(0) --�������ر߿�����
for i=1, 12 do _G["ActionButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomLeftButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomLeftButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarBottomRightButton"..i.."NormalTexture"]:SetTexture("") end 
for i=7, 12 do _G["MultiBarBottomRightButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarLeftButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarLeftButton"..i.."FloatingBG"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarRightButton"..i.."NormalTexture"]:SetTexture("") end 
for i=1, 12 do _G["MultiBarRightButton"..i.."FloatingBG"]:SetTexture("") end
--����ϵͳ�˵�
local dummy=function() end
MicroButtonAndBagsBar:Hide();
MicroButtonAndBagsBar.Show = dummy
CharacterMicroButton:ClearAllPoints()
CharacterMicroButton:SetPoint("CENTER",UIParent,"BOTTOMRIGHT",-275,-20)
CharacterMicroButton.SetPoint = dummy
