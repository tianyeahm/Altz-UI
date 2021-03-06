
-- local T, C, L, G = unpack(select(2, ...))

local addon, ns = ...
ns[1] = {} -- T, functions, constants, variables
ns[2] = {} -- C, config
ns[3] = {} -- L, localization
ns[4] = {} -- G, globals (Optionnal)

--[[--------------
--     init     --
--------------]]--

local T, C, L, G = unpack(select(2, ...))

G.uiname = "AltzUI_"

G.dragFrameList = {}

G.norFont = GameFontHighlight:GetFont()
G.numFont = "Interface\\AddOns\\AltzUI\\media\\number.ttf"
G.symbols = "Interface\\Addons\\AltzUI\\media\\PIZZADUDEBULLETS.ttf"

G.media = {
	blank = "Interface\\Buttons\\WHITE8x8",
	bar = "Interface\\AddOns\\AltzUI\\media\\statusbar",
	glow = "Interface\\AddOns\\Aurora\\media\\glow",
	checked = "Interface\\AddOns\\Aurora\\media\\CheckButtonHilight",
	left = "Interface\\AddOns\\AltzUI\\media\\left",
	right = "Interface\\AddOns\\AltzUI\\media\\right",
	barhightlight = "Interface\\AddOns\\AltzUI\\media\\highlight",
	reseting = "Interface\\AddOns\\AltzUI\\media\\resting",
	combat = "Interface\\AddOns\\AltzUI\\media\\combat",
}

G.Client = GetLocale()
G.Version = GetAddOnMetadata("AltzUIConfig", "Version")

G.PlayerRealm = GetCVar("realmName");
G.PlayerName = UnitName("player");
		
G.resolution = GetCVar("gxResolution")
G.screenheight = tonumber(string.match(G.resolution, "%d+x(%d+)"))
G.screenwidth = tonumber(string.match(G.resolution, "(%d+)x+%d"))

G.myClass = select(2, UnitClass("player"))

G.Ccolor = {}
if(IsAddOnLoaded'!ClassColors' and CUSTOM_CLASS_COLORS) then
	G.Ccolor = CUSTOM_CLASS_COLORS[G.myClass]
else
	G.Ccolor = RAID_CLASS_COLORS[G.myClass]
end

G.Ccolors = {}
if(IsAddOnLoaded'!ClassColors' and CUSTOM_CLASS_COLORS) then
	G.Ccolors = CUSTOM_CLASS_COLORS
else
	G.Ccolors = RAID_CLASS_COLORS
end