--�����
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
editbox:SetPoint("BOTTOM", self, "BOTTOM", 0, 300) --�{��ݔ����λ��
editbox:SetPoint("LEFT", self, 0, 0)
editbox:SetPoint("RIGHT", self, -20, 0)
editbox:SetAltArrowKeyMode(false)
local tab = _G[name.."Tab"]:GetFontString()
tab:SetFont(tab:GetFont(), 12, "NORMAL")
end

do
--��������򺆻�һ��
for i = 1, NUM_CHAT_WINDOWS do
simplify(_G["ChatFrame"..i])
end
--�[��ϵ�y���鰴�o
ChatFrameMenuButton:HookScript("OnShow", ChatFrameMenuButton.Hide)
ChatFrameMenuButton:Hide()
--�罻���o
QuickJoinToastButton:Hide()
--��������Ųһ��λ��
if (BN_TOAST_LEFT_OFFSET) then
BN_TOAST_LEFT_OFFSET = BN_TOAST_LEFT_OFFSET + 50
BN_TOAST_TOP_OFFSET = BN_TOAST_TOP_OFFSET + 32
end
--���ٝL�� ctrl��β shift��3��
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
--�����ǩ
CHAT_FRAME_FADE_OUT_TIME = 0 -- ���촰����ɫʱ��
CHAT_TAB_HIDE_DELAY = 0 -- �����ǩ������ʱ
CHAT_FRAME_TAB_NORMAL_MOUSEOVER_ALPHA = 0.6 -- ���ͣ��ʱ,��ǩ͸����
CHAT_FRAME_TAB_NORMAL_NOMOUSE_ALPHA = 0 -- ����뿪ʱ,��ǩ͸���� (�޸�������һֱ��ʾ)
CHAT_FRAME_TAB_SELECTED_MOUSEOVER_ALPHA = 1 -- ���ͣ��ʱ,ѡ���ǩʱ͸����
CHAT_FRAME_TAB_SELECTED_NOMOUSE_ALPHA = 0 -- ����뿪ʱ,ѡ���ǩʱ͸����
CHAT_FRAME_TAB_ALERTING_MOUSEOVER_ALPHA = 0.6 -- ���ͣ��ʱ,��ǩ����ʱ͸����
CHAT_FRAME_TAB_ALERTING_NOMOUSE_ALPHA = 0 -- ����뿪ʱ,��ǩ����ʱ͸����
--����
ChatFrameChannelButton:SetAlpha(0)
ChatFrameToggleVoiceDeafenButton:SetAlpha(0)
ChatFrameToggleVoiceMuteButton:SetAlpha(0)