--头像显示职业
hooksecurefunc("UnitFramePortrait_Update",function(self) 
   if self.portrait then 
      if UnitIsPlayer(self.unit) then         
         local t = CLASS_ICON_TCOORDS[select(2,UnitClass(self.unit))] 
         if t then 
            self.portrait:SetTexture("Interface\\TargetingFrame\\UI-Classes-Circles") 
            self.portrait:SetTexCoord(unpack(t)) 
         end 
      else 
         self.portrait:SetTexCoord(0,1,0,1) 
      end 
   end 
end);
--头像和宠物头像不显示数据
PetHitIndicator:Hide() 
PetHitIndicator.Show = function() end
local p=PlayerHitIndicator;p.Show=p.Hide;p:Hide()
--目标焦点名字背景透明
FocusFrameNameBackground:SetTexture()
TargetFrameNameBackground:SetTexture()