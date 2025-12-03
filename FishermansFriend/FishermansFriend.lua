-- FishermansFriend is based upon FishingAce

local fmfButton -- our secure button

local fishingLures = {
	[46006] = { -- "Glow Worm", -- 100 for 1 hour
		["b"] = 100, -- +100 fishing
		["s"] = 100, -- requires 100 fishing
	},
	[34861] = { -- "Sharpened Fish Hook", -- 100 for 10 mins
		["b"] = 100, -- +100 fishing
		["s"] = 100, -- requires 100 fishing
	},
	[6533] = { -- "Aquadynamic Fish Attractor",       -- 100 for 10 mins
		["b"] = 100, -- +100 fishing
		["s"] = 100, -- requires 100 fishing
	},
	[7307] = { -- "Flesh Eating Worm",                -- 75 for 10 mins
		["b"] = 75, -- +75 fishing
		["s"] = 100, -- requires 100 fishing
	},
	[6532] = { -- "Bright Baubles",                   -- 75 for 10 mins
		["b"] = 75, -- +75 fishing
		["s"] = 100, -- requires 100 fishing
	},
	[6811] = { -- "Aquadynamic Fish Lens",            -- 50 for 10 mins
		["b"] = 50, -- +50 fishing
		["s"] = 50, -- requires 50 fishing
	},
	[6530] = { -- "Nightcrawlers",                    -- 50 for 10 mins
		["b"] = 50, -- +50 fishing
		["s"] = 50, -- requires 50 fishing
	},
	[6529] = { -- "Shiny Bauble",                     -- 25 for 10 mins
		["b"] = 25, -- +25 fishing
		["s"] = 1, -- requires 1 fishing
	},
}

local itemLures = {
	[33820] = { -- "Weather-Beaten Fishing Hat", -- 75 for 10 mins
		["b"] = 75, -- +75 fishing
		["s"] = 0, -- no actual requirement
	},
}

local itemLureSlots = {
	[1] = true, --HeadSlot
}

local FISHINGTEXTURE = "Interface\\Icons\\Trade_Fishing"
local db -- our saved variables database
local overrideOn = false -- do we have the override click active?
local fishingName = ""		-- fishing skill name, will be filled from spellbook
local fishingSubName = ""	-- fishing skill subname, will be filled from spellbook
local isFishing = nil		-- flag if we're in fishing mode or not
local fishingSkill = 0		-- fishing skill level, will be filled from the skill tab
local addingLure = nil		-- are we in the process of adding a lure flag
local currentLure = nil		-- will contain the name of the current lure being added
local resetClickToMove = nil -- will be set to true if we have clicktomove overridden
local resetAutoLoot = nil	-- will be set to true if we have overriden autoloot
local ACTIONDOUBLEWAIT = 0.4 -- seconds to wait for the next click for doubleclicking
local lastClickTime = nil -- used to store the last click time for doubleclick detection
local recheckAfterCombat = nil -- toggle to recheck fishing mode after combat ends
-- saved variable defaults
local defaults = {
	profile = {
		sounds = true,
		autoloot = true,
		autolure = true,
		autoitem = true,
		soundVars = { 
			["Sound_MasterVolume"] = true,
			["Sound_MusicVolume"] = true,
			["Sound_AmbienceVolume"] = true,
			["Sound_SFXVolume"] = true,
		},
		ignoreVars = {
			["MapWaterSounds"] = true,
		},
	}
}

local L = LibStub("AceLocale-3.0"):GetLocale("FishermansFriend")

local function giveOptions()
	-- GUI options table
	local options = {
		type = "group",
		icon = FISHINGTEXTURE,
		name = L["Fishermans Friend"],
		get = function( k ) return db[k.arg] end,
		set = function( k, v ) db[k.arg] = v end,
		args = {
			fishdesc = {
				type = "description", order = 0,
				name = L["Fishermans Friend will automatically detect if you are wielding a fishing rod. When you are you can double rightclick to cast your line. You can toggle the features of Fishermans Friend below."],
			},
			autoloot = {
				name = L["Auto Loot"],
				desc = L["Turn on Auto Loot when fishing."],
				type = "toggle",
				arg = "autoloot",
				order = 1, width = "full",
			},
			autolure = {
				name = L["Auto Lure"],
				desc = L["Automatically apply the best lure to your fishing pole."],
				type = "toggle",
				arg = "autolure",
				order = 2, width = "full",
			},
			autoitem = {
				name = L["Auto Item"],
				desc = L["Automatically attempt to use a worn fishing item. For instance the Weather-Beaten Fishing Hat. Items are favored over lures."],
				type = "toggle",
				arg = "autoitem",
				order = 3, width = "full",
			},
			sounds = {
				name = L["Enhance Sounds"],
				desc = L["Enhance sounds for fishing, lowering all sounds but the bobber (and potentially other sound effects)."],
				type = "toggle",
				arg = "sounds",
				order = 4, width = "full",
			},
		}
	}
	return options
end

-- Addon Declaration
FishermansFriend = LibStub("AceAddon-3.0"):NewAddon("FishermansFriend", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

-- Addon Initialization
function FishermansFriend:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("FishermansFriendDB", defaults, "Default")
	db = self.db.profile
	
	if AddonLoader and AddonLoader.RemoveInterfaceOptions then
		AddonLoader:RemoveInterfaceOptions("Fishermans Friend")
	end
	
	LibStub("AceConfigRegistry-3.0"):RegisterOptionsTable("Fishermans Friend", giveOptions)
	LibStub("AceConfigDialog-3.0"):AddToBlizOptions("Fishermans Friend", L["Fishermans Friend"])
	
    self:RegisterChatCommand("fishermansfriend", function() InterfaceOptionsFrame_OpenToCategory(LibStub("AceConfigDialog-3.0").BlizOptions["Fishermans Friend"].frame) end)
    self:RegisterChatCommand("fmf", function() InterfaceOptionsFrame_OpenToCategory(LibStub("AceConfigDialog-3.0").BlizOptions["Fishermans Friend"].frame) end)	
	
end

function FishermansFriend:OnEnable()
	-- nil out the following 3 vars for proper reset
	isFishing = nil
	addingLure = nil
	currentLure = nil
	
	self:CreateButton()
	self:HookScript(WorldFrame, "OnMouseDown", "WorldFrameOnMouseDown")
	self:RegisterEvent("UNIT_INVENTORY_CHANGED")
	self:RegisterEvent("UNIT_AURA", "UNIT_INVENTORY_CHANGED")
	self:RegisterEvent("EQUIPMENT_SWAP_FINISHED")
	self:RegisterEvent("SPELLS_CHANGED")
	self:RegisterEvent("PLAYER_LOGOUT", "StopFishingMode")
	self:RegisterEvent("LEARNED_SPELL_IN_TAB", "SPELLS_CHANGED")
	self:RegisterEvent("SKILL_LINES_CHANGED", "SPELLS_CHANGED")
	
	self:RegisterEvent("PLAYER_REGEN_ENABLED")
	
	-- intial setup
	self:SPELLS_CHANGED() -- find the fishing skill
	self:UNIT_INVENTORY_CHANGED( "", "player" ) -- find the fishing pole
	
end

-- Make sure we stop fishing OnDisable to restore old values of mouselook etc.
function FishermansFriend:OnDisable()
	self:StopFishingMode()
end

-- Remove the overridebinding click after clicking or after setting a lure
local function CleanupOverride()
	local wait = false
	if InCombatLockdown() then
		wait = true
	elseif overrideOn then
		ClearOverrideBindings(fmfButton)
		overrideOn = false		
	end

	if addingLure then
		local sp, rk, dn, ic, st, et = UnitCastingInfo("player")
		if not sp or (dn and dn ~= currentLure ) then
			addingLure = nil
		else
			wait = true
		end
	end
	
	if wait then
		FishermansFriend:ScheduleTimer( CleanupOverride, 1 )
	end
end

function FishermansFriend:CreateButton()
	-- button already exists
	if fmfButton then return end
	
	fmfButton = CreateFrame("Button", "FishermansFriendButton", UIParent, "SecureActionButtonTemplate")
	-- place outside viewable area
	fmfButton:SetPoint("LEFT", UIParent, "RIGHT", 10000, 0)
	fmfButton:EnableMouse(true)
	fmfButton:RegisterForClicks("RightButtonUp")
	fmfButton:Hide()
	fmfButton:SetScript("PostClick", CleanupOverride)
end

local function CheckForDoubleClick()
	if lastClickTime then
		local pressTime = GetTime()
		local doubleTime = pressTime - lastClickTime
		lastClickTime = pressTime
		if ( doubleTime < ACTIONDOUBLEWAIT ) then
			return true
		end
	end
	lastClickTime = GetTime()
	return false
end

function FishermansFriend:WorldFrameOnMouseDown( this, button )
	if button == "RightButton" and not InCombatLockdown() and 
		isFishing and fishingName and CheckForDoubleClick() then
			-- We're stealing the mouse-up event, make sure we exit MouseLook
			if IsMouselooking() then MouselookStop() end
			if not self:AddLure() then
				fmfButton:SetAttribute("type", "spell")
				fmfButton:SetAttribute("spell", fishingName)
			end
			SetOverrideBindingClick(fmfButton, true, "BUTTON2", "FishermansFriendButton")
			overrideOn = true
	end
end

function FishermansFriend:PLAYER_REGEN_ENABLED()
	if recheckAfterCombat then
		recheckAfterCombat = nil
		self:UNIT_INVENTORY_CHANGED("", "player") -- check if we have a fishing pole
	end
end


function FishermansFriend:EQUIPMENT_SWAP_FINISHED(event, success, name)
	if success == true then self:UNIT_INVENTORY_CHANGED("", "player") end
end

function FishermansFriend:UNIT_INVENTORY_CHANGED( event, unit )
	if unit ~= "player" then return end -- we only care about the player
	if InCombatLockdown() then
		recheckAfterCombat = true -- we'll check back for the pole after combat
		return
	end
	local usingFishingPole = IsUsableSpell(fishingName or "")
	-- enable / disable fishing mode only if we have to
	if not isFishing and usingFishingPole then
		self:StartFishingMode()
	elseif isFishing and not usingFishingPole then 
		self:StopFishingMode()
	end
end

function FishermansFriend:SPELLS_CHANGED()
	-- find the fishing skill if possible
	local id = 1
	local spellTexture = GetSpellTexture(id, BOOKTYPE_SPELL)
	while spellTexture do
		if spellTexture == FISHINGTEXTURE then
			fishingName, fishingSubName = GetSpellName(id, BOOKTYPE_SPELL)
			-- found fishing, now get the skill level
			local numskills = GetNumSkillLines()
			for i = 1, numskills do
				local name, _, _, rank, _, modifier = GetSkillLineInfo(i)
				if name == fishingName then
					fishingSkill = rank + modifier
					break
				end
			end	
			fishingName = fishingName.."("..fishingSubName..")"
			break
		end
		id = id + 1
		spellTexture = GetSpellTexture(id, BOOKTYPE_SPELL)
	end
end

function FishermansFriend:GetBestLure()
	local itemid

	local lbag, lslot, lure, lname = nil, nil, nil, nil
	local bonus = 0

	if db.autoitem then
		for slot in pairs(itemLureSlots) do 
			if (GetInventoryItemCooldown('player', slot)) == 0 then
				_,_,itemid,_,itemname = string.find(GetInventoryItemLink("player",slot) or "", "item:(%d+):%d+:%d+:%d(.*)%[(.*)%]")
				itemid = tonumber(itemid)
				if itemid and itemLures[itemid] then
					lure = itemLures[itemid]
					if lure.b > bonus and lure.s <= fishingSkill then
						lbag = -1
						lslot = slot
						lname = itemname
						bonus = lure.b
					end
				end
			end
		end
	end

	if not lname and db.autolure then
		for bag = 0, 4, 1 do
			for slot = 1, GetContainerNumSlots(bag), 1 do
				_,_,itemid,_,itemname = string.find(GetContainerItemLink(bag,slot) or "", "item:(%d+):%d+:%d+:%d(.*)%[(.*)%]")
				itemid = tonumber(itemid)
				if itemid and fishingLures[itemid] then
					lure = fishingLures[itemid]
					if lure.b > bonus and lure.s <= fishingSkill then
						lbag = bag
						lslot = slot
						lname = itemname
						bonus = lure.b
					end
				end
			end
		end
	end
	return lbag, lslot, lname
end

function FishermansFriend:AddLure()
	if not addingLure and ( db.autolure or db.autoitem ) then
		-- if the pole has an enchantment, we can assume it's got a lure on it (so far, anyway)
		local hmhe = GetWeaponEnchantInfo()
		if not hmhe then
			currentLure = nil
			local tb, ts, name = self:GetBestLure()
			if tb then
				if tb < 0 then -- equipped item with lure Use:
					fmfButton:SetAttribute("type", "item")
					fmfButton:SetAttribute("bag", nil)
					fmfButton:SetAttribute("slot", ts)
					fmfButton:SetAttribute("spell", nil)
					addingLure = true
					currentLure = name
				else
					fmfButton:SetAttribute("type", "item")
					fmfButton:SetAttribute("bag", tb)
					fmfButton:SetAttribute("slot", ts)
					local slot = GetInventorySlotInfo("MainHandSlot")
					fmfButton:SetAttribute("target-slot", slot)
					fmfButton:SetAttribute("spell", nil)
					addingLure = true
					currentLure = name
				end
			end
			if currentLure then
				return true
			end
		end
	end
	currentLure = nil
	return false	
end

function FishermansFriend:StartFishingMode()
	if isFishing then return end
	
	-- Disable Click-to-Move if we're fishing
	if GetCVar("autointeract") == "1" then
		resetClickToMove = true
		SetCVar("autointeract", "0")
	end
	-- autoloot on when fishing
	if db.autoloot and not GetCVarBool("autoLootDefault") then
		resetAutoLoot = true
		SetCVar("autoLootDefault", "1")
	end
	-- sound enhancement
	if db.sounds then self:EnhanceSound() end
	isFishing = true
end

function FishermansFriend:StopFishingMode()
	if not isFishing then return end
	
	if resetClickToMove then
		-- Re-enable Click-to-Move if we changed it
		SetCVar("autointeract", "1")
		resetClickToMove = nil
	end
	if resetAutoLoot then
		SetCVar("autoLootDefault", "0")
		resetAutoLoot = nil
	end
	self:RestoreSound()
	isFishing = false
end

function FishermansFriend:EnhanceSound()
	if db.isEnhanced then return end
	for k, v in pairs( db.soundVars ) do
		db.soundVars[k] = tonumber(GetCVar(k))
	end
	for k, v in pairs( db.ignoreVars ) do
		db.soundVars[k] = nil
	end
	SetCVar("Sound_MasterVolume", 1.0)
	SetCVar("Sound_SFXVolume", 1.0)
	SetCVar("Sound_MusicVolume", 0.0)
	SetCVar("Sound_AmbienceVolume", 0.0)
	-- SetCVar("MapWaterSounds", 0)
	db.isEnhanced = true
end

function FishermansFriend:RestoreSound()
	if not db.isEnhanced then return end
	for k, v in pairs( db.soundVars ) do
		SetCVar(k, v)
		db.soundVars[k] = true
	end
	db.isEnhanced = nil
end

