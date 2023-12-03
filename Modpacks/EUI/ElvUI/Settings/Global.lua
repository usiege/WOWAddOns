local E, L, V, P, G = unpack(select(2, ...)) --Import: Engine, Locales, PrivateDB, ProfileDB, GlobalDB

--Global Settings
G.general = {
	UIScale = 0.64,
	version = 1.28,
	locale = E:GetLocale(),
	eyefinity = false,
	smallerWorldMap = true,
	allowDistributor = false,
	smallerWorldMapScale = 0.9,
	fadeMapWhenMoving = true,
	mapAlphaWhenMoving = 0.2,
	fadeMapDuration = 0.2,
	WorldMapCoordinates = {
		enable = true,
		position = "BOTTOMLEFT",
		xOffset = 0,
		yOffset = 0
	},
	AceGUI = {
		width = 960,
		height = 730
	},
	disableTutorialButtons = true,
	showMissingTalentAlert = false,
	commandBarSetting = "ENABLED_RESIZEPARENT"
}

G.classtimer = {}

G.chat = {
	classColorMentionExcludedNames = {}
}

G.bags = {
	ignoredItems = {}
}

G.datatexts = {
	customPanels = {},
	customCurrencies = {},
	newPanelInfo = {
		name = '',
		enable = true,
		growth = 'HORIZONTAL',
		width = 300,
		height = 22,
		frameStrata = 'LOW',
		numPoints = 3,
		frameLevel = 1,
		backdrop = true,
		panelTransparency = false,
		mouseover = false,
		border = true,
		visibility = '[petbattle] hide;show',
		tooltipAnchor = 'ANCHOR_TOPLEFT',
		tooltipXOffset = -17,
		tooltipYOffset = 4,
		fonts = {
			enable = false,
			font = "PT Sans Narrow",
			fontSize = 12,
			fontOutline = "OUTLINE",
		}
	},
}

G.nameplate = {
	effectiveHealth = false,
	effectivePower = false,
	effectiveAura = false,
	effectiveHealthSpeed = 0.3,
	effectivePowerSpeed = 0.3,
	effectiveAuraSpeed = 0.3,
}

G.unitframe = {
	aurafilters = {},
	buffwatch = {},
	effectiveHealth = false,
	effectivePower = false,
	effectiveAura = false,
	effectiveHealthSpeed = 0.3,
	effectivePowerSpeed = 0.3,
	effectiveAuraSpeed = 0.3,
	raidDebuffIndicator = {
		instanceFilter = "RaidDebuffs",
		otherFilter = "CCDebuffs"
	},
}

G.profileCopy = {
	--Specific values
	selected = "Default",
	movers = {},
	--Modules
	actionbar = {
		general = true,
		bar1 = true,
		bar2 = true,
		bar3 = true,
		bar4 = true,
		bar5 = true,
		bar6 = true,
		barPet = true,
		stanceBar = true,
		microbar = true,
		cooldown = true
	},
	auras = {
		general = true,
		buffs = true,
		debuffs = true,
		cooldown = true
	},
	bags = {
		general = true,
		split = true,
		vendorGrays = true,
		bagBar = true,
		cooldown = true
	},
	chat = {
		general = true
	},
	cooldown = {
		general = true,
		fonts = true
	},
	databars = {
		experience = true,
		reputation = true,
		honor = true,
	},
	datatexts = {
		general = true,
		panels = true
	},
	general = {
		general = true,
		minimap = true,
		threat = true,
		totems = true,
		itemLevel = true,
		altPowerBar = true
	},
	nameplates = {
		general = true,
		cooldown = true,
		threat = true,
		units = {
			PLAYER = true,
			TARGET = true,
			FRIENDLY_PLAYER = true,
			ENEMY_PLAYER = true,
			FRIENDLY_NPC = true,
			ENEMY_NPC = true
		}
	},
	tooltip = {
		general = true,
		visibility = true,
		healthBar = true
	},
	unitframe = {
		general = true,
		cooldown = true,
		colors = {
			general = true,
			power = true,
			reaction = true,
			healPrediction = true,
			classResources = true,
			frameGlow = true,
			debuffHighlight = true
		},
		units = {
			player = true,
			target = true,
			targettarget = true,
			targettargettarget = true,
			pet = true,
			pettarget = true,
			party = true,
			raid = true,
			raid40 = true,
			raidpet = true,
			tank = true,
			assist = true
		}
	}
}