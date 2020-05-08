--聊天框
local function simplify(self)
if not self or self.hasSimplified then return end
local name = self:GetName()
self.hasSimplified = true
self:SetClampRectInsets(0, 0, 0, 0)
self:SetMaxResize(UIParent:GetWidth(), UIParent:GetHeight())
self:SetMinResize(100, 50)
_G[name.."ButtonFrame"]:Hide()
_G[name.."ButtonFrame"]:HookScript("OnShow", _G[name.."ButtonFrame"].Hide)
_G[name.."EditBoxLeft"]:Hide()
_G[name.."EditBoxMid"]:Hide()
_G[name.."EditBoxRight"]:Hide()
local editbox = _G[name.."EditBox"]
editbox:ClearAllPoints()
editbox:SetPoint("BOTTOM", self, "BOTTOM", 0, 300) --調整輸入框的位置
editbox:SetPoint("LEFT", self, 0, 0)
editbox:SetPoint("RIGHT", self, -20, 0)
editbox:SetAltArrowKeyMode(false)
local tab = _G[name.."Tab"]:GetFontString()
tab:SetFont(tab:GetFont(), 12, "NORMAL")
end

do
--所有聊天框簡化一下
for i = 1, NUM_CHAT_WINDOWS do
simplify(_G["ChatFrame"..i])
end
--隱藏系統表情按鈕
ChatFrameMenuButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
ChatFrameMenuButton:Hide()
--社交按鈕
QuickJoinToastButton:Hide()
--好友提醒挪一下位置
if (BN_TOAST_LEFT_OFFSET) then
BN_TOAST_LEFT_OFFSET = BN_TOAST_LEFT_OFFSET + 50
BN_TOAST_TOP_OFFSET = BN_TOAST_TOP_OFFSET + 32
end
--快速滾動 ctrl首尾 shift跳3行
hooksecurefunc("FloatingChatFrame_OnMouseScroll", function(self, delta)
if (delta > 0) then
if IsControlKeyDown() then self:ScrollToTop()
elseif IsShiftKeyDown() then self:ScrollUp() self:ScrollUp() end
else
if IsControlKeyDown() then self:ScrollToBottom()
elseif IsShiftKeyDown() then self:ScrollDown() self:ScrollDown() end
end
end)
end
--聊天标签
CHAT_FRAME_FADE_OUT_TIME = 0 -- 聊天窗口褪色时间
CHAT_TAB_HIDE_DELAY = 0 -- 聊天标签弹出延时
CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 0.6 -- 鼠标停留时,标签透明度
CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0 -- 鼠标离开时,标签透明度 (修改这里能一直显示)
CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA = 1 -- 鼠标停留时,选择标签时透明度
CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0 -- 鼠标离开时,选择标签时透明度
CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA = 0.6 -- 鼠标停留时,标签闪动时透明度
CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA = 0 -- 鼠标离开时,标签闪动时透明度
--语音
ChatFrameChannelButton:SetAlpha(0)
ChatFrameToggleVoiceDeafenButton:SetAlpha(0)
ChatFrameToggleVoiceMuteButton:SetAlpha(0)