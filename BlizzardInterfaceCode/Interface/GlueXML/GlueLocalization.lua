function Localize()
	-- Put all locale specific string adjustments here
end

function LocalizeFrames()
	CharacterCreateNameEdit:SetMaxLetters(12);

	-- Defined variable to show gameroom billing messages
	SHOW_GAMEROOM_BILLING_FRAME = 1;

	ONLY_SHOW_GAMEROOM_BILLING_FRAME_ON_PERSONAL_TIME = true;
	
	-- Hide save username button
	HIDE_SAVE_ACCOUNT_NAME_CHECKBUTTON = true;

	-- fix the credits screen
	CREDITS_ART_INFO[3] = {};
	CREDITS_ART_INFO[3][1] = { file="ColdarraNexTGA", w=1024, h=512, offsetx=0, offsety=0, maxAlpha=0.7 };

	-- zhCN Logo
	classicLogo = 'Interface\\Glues\\Common\\GLUES-WOW-CLASSICLOGO';
	classicLogoTexCoords = { 0, 1, 0, 1 };
	_G["CharacterCreateWoWLogo"]:SetPoint("TOPLEFT", _G["CharacterCreateFrame"], 3, 14) -- -3, +11
	_G["CharacterSelectLogo"]:SetPoint("TOPLEFT", 5, -5);
	_G["AccountLogin"].UI.GameLogo:SetPoint("TOPLEFT", 5, -5);
end
