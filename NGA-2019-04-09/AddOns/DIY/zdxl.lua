--自动修理
local AutoRepair = true 
local g = CreateFrame("Frame") 
g:RegisterEvent("MERCHANT_SHOW") 
g:SetScript("OnEvent", function()     
   if(AutoRepair==true and CanMerchantRepair()) then 
           local cost = GetRepairAllCost() 
      if cost > 0 then 
         local money = GetMoney() 
         if IsInGuild() then 
            local guildMoney = GetGuildBankWithdrawMoney() 
            if guildMoney > GetGuildBankMoney() then 
               guildMoney = GetGuildBankMoney() 
            end 
            if guildMoney > cost and CanGuildBankRepair() then 
               RepairAllItems(1) 
               print(format("|cfff07100工会修理花费: %.1fG|r", cost * 0.0001)) 
               return 
            end 
         end 
         if money > cost then 
               RepairAllItems() 
               print(format("|cffead000修理花费: %.1fG|r", cost * 0.0001)) 
         else 
            print("Go farm newbie.") 
         end 
      end 
end 
end)
--自动卖垃圾 

local frame = CreateFrame("Frame") 
frame:SetScript("OnEvent", function (...) 
    local total = 0 

    for container = 0, 4 do 
        local slotNum = GetContainerNumSlots(container) 

        for slot = 1, slotNum do 
            local link = GetContainerItemLink(container, slot) 

            -- item quality == 0 (poor) 
            if link and select(3, GetItemInfo(link)) == 0 then 

                -- vendor price per each * stack number 
                local price = select(11, GetItemInfo(link)) * select(2, GetContainerItemInfo(container, slot)) 

                if price > 0 then 
                    UseContainerItem(container, slot) 
                    PickupMerchantItem() 

                    total = total + price 

                    print(string.format("自动出售垃圾物品 %s 获得: %.1fG", link, price * 0.0001)) 
                end 
            end 
        end 
    end 

    if total > 0 then 
        print(string.format("自动出售垃圾物品共获利: %.1fG", total * 0.0001)) 
    end 
end) 
frame:RegisterEvent("MERCHANT_SHOW")