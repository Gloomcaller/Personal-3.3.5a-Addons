--Saved VariablesPerCharacter: RedeemerDisplaySay, RedeemerDisplayParty, RedeemerDisplayRaid, RedeemerDisplayWhisper

function Redeemer_OnLoad(self)

	self:RegisterEvent("ADDON_LOADED");
	self:RegisterEvent("UNIT_SPELLCAST_SENT");
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	self:RegisterEvent("PLAYER_DEAD");
	self:RegisterEvent("PLAYER_ALIVE");

	SLASH_REDEEMER1 = "/redeemer";
	SlashCmdList["REDEEMER"] = Redeemer_SlashOpts;
end

function Redeemer_OnEvent(self, event, ...)

	if (event == "ADDON_LOADED") then
		local addon = select(1, ...);
		if (addon == "Redeemer") then
			DEFAULT_CHAT_FRAME:AddMessage("Redeemer is locked and loaded! /redeemer for options.", 0.25, 0.88, 0.88);
			--if an option setting is not found, set it to default
			if (RedeemerDisplaySay == nil) then
				DEFAULT_CHAT_FRAME:AddMessage("Redeemer /say option default  set |cffffffff[|cff00ff00on|cffffffff]", 0.25, 0.88, 0.88);
				RedeemerDisplaySay = true;
			end
			if (RedeemerDisplayParty == nil) then
				DEFAULT_CHAT_FRAME:AddMessage("Redeemer /party option default set |cffffffff[|cffff0000off|cffffffff]", 0.25, 0.88, 0.88);
				RedeemerDisplayParty = false;
			end
			if (RedeemerDisplayRaid == nil) then
				DEFAULT_CHAT_FRAME:AddMessage("Redeemer /raid option default set |cffffffff[|cffff0000off|cffffffff]", 0.25, 0.88, 0.88);
				RedeemerDisplayRaid = false;
			end
			if (RedeemerDisplayWhisper == nil) then
				DEFAULT_CHAT_FRAME:AddMessage("Redeemer /whisper option default set |cffffffff[|cffff0000off|cffffffff]", 0.25, 0.88, 0.88);
				RedeemerDisplayWhisper = false;
			end
		end
	end

	if (event == "UNIT_SPELLCAST_SENT") then
		if (arg1 == "player") then
			--DEFAULT_CHAT_FRAME:AddMessage("Spellcast: " .. arg1 .. arg2 .. arg3 .. arg4);
			if (arg2 == "Redemption") then
				Redeemer_Quotes("Paladin", arg4);
			elseif (arg2 == "Resurrection") then
				Redeemer_Quotes("Priest", arg4);
			elseif (arg2 == "Ancestral Spirit") then
				Redeemer_Quotes("Shaman", arg4);
			elseif (arg2 == "Revive") then
				Redeemer_Quotes("Druid", arg4);
			elseif (arg2 == "Revive Pet") then
				if (PET_NAME) then
					Redeemer_Quotes("Hunter", PET_NAME);
				else
					SendChatMessage("Pet Name unknown!");
				end
			elseif (arg2 == "Rebirth") then
				Redeemer_Quotes("Combat", arg4);
			elseif (arg2 == "Defibrillate") then
				Redeemer_Quotes("Engineer", arg4);
			elseif (arg2 == "Raise Dead") then
				Redeemer_Quotes("DeathKnightDead", arg4);
			elseif (arg2 == "Raise Ally") then
				Redeemer_Quotes("DeathKnightAlly", arg4)
			elseif (arg2 == "Soulstone Resurrection") then
				Redeemer_Quotes("Warlock", arg4);
			end
		end
	end

	if (event == "COMBAT_LOG_EVENT_UNFILTERED") then
		--if pet dies, gets pet's name
		if (arg2 == "UNIT_DIED") then
			if (arg8 == 0x1111) then
				PET_NAME = arg7;
			end
		end
	end

	if (event == "PLAYER_DEAD") then
		if (HasSoulstone()) then
			RedeemerHasSoulstone = true;
		end
	end

	if (event == "PLAYER_ALIVE") then
		if (RedeemerHasSoulstone) then
			RedeemerHasSoulstone = false;
			Redeemer_Quotes("Self", "self");
		end
	end

end

function Redeemer_Quotes(playerClass, target)

	--DEFAULT_CHAT_FRAME:AddMessage("Redeemer called: " .. playerClass .. target);
	--SendChatMessage("Redeemer called!");
	local chatMessage;
	if (string.upper(target) == "UNKNOWN") then
		chatMessage = noTargetQuotes[random(#(noTargetQuotes))];
	elseif (playerClass == "Hunter") then
		chatMessage = hunterQuotes[random(#(hunterQuotes))];
	elseif (playerClass == "Combat") then
		chatMessage = combatQuotes[random(#(combatQuotes))];
	elseif (playerClass == "Engineer") then
		chatMessage = engineerQuotes[random(#(engineerQuotes))];
	elseif (playerClass == "Warlock") then
		chatMessage = warlockQuotes[random(#(warlockQuotes))];
	elseif (playerClass == "Self") then
		chatMessage = selfQuotes[random(#(selfQuotes))];
	elseif (playerClass == "DeathKnightDead") then
		chatMessage = noghoulQuotes[random(#(noghoulQuotes))];
	elseif (playerClass == "DeathKnightAlly") then
		chatMessage = ghoulQuotes[random(#(ghoulQuotes))];
	else
		chatMessage = otherQuotes[random(#(otherQuotes))];
	end

	chatMessage = string.gsub(chatMessage, "%%t", target);

	Redeemer_SendQuotes(chatMessage, target);
	--quote = quote + 1;

end

function Redeemer_SendQuotes(chatMessage, target)

	if (RedeemerDisplayRaid and UnitInRaid("player")) then
		SendChatMessage(chatMessage, "RAID");
	elseif (RedeemerDisplayParty and GetNumPartyMembers() > 0) then
		SendChatMessage(chatMessage, "PARTY");
	elseif (RedeemerDisplaySay) then
		SendChatMessage(chatMessage, "SAY");
	end

	if (RedeemerDisplayWhisper and string.upper(target) ~= "UNKNOWN") then
		SendChatMessage(chatMessage, "WHISPER", nil, target);
	end

end

function Redeemer_SlashOpts(cmd)

	cmd = string.lower(cmd);

	if (cmd == "say") then
		RedeemerDisplaySay = not RedeemerDisplaySay;
		sayText = "|cffffffff[";
		if (RedeemerDisplaySay) then
			sayText = sayText.."|cff00ff00on";
		else
			sayText = sayText.."|cffff0000off";
		end
		sayText = sayText.."|cffffffff]";
		DEFAULT_CHAT_FRAME:AddMessage("Quotes sent to /say toggled "..sayText, 0.25, 0.88, 0.88);

	elseif (cmd == "party") then
		RedeemerDisplayParty = not RedeemerDisplayParty;
		partyText = "|cffffffff[";
		if (RedeemerDisplayParty) then
			partyText = partyText.."|cff00ff00on";
		else
			partyText = partyText.."|cffff0000off";
		end
		partyText = partyText.."|cffffffff]";
		DEFAULT_CHAT_FRAME:AddMessage("Quotes sent to /party toggled "..partyText, 0.25, 0.88, 0.88);

	elseif (cmd == "raid") then
		RedeemerDisplayRaid = not RedeemerDisplayRaid;
		raidText = "|cffffffff[";
		if (RedeemerDisplayRaid) then
			raidText = raidText.."|cff00ff00on";
		else
			raidText = raidText.."|cffff0000off";
		end
		raidText = raidText.."|cffffffff]";
		DEFAULT_CHAT_FRAME:AddMessage("Quotes sent to /raid toggled "..raidText, 0.25, 0.88, 0.88);

	elseif (cmd == "whisper") then
		RedeemerDisplayWhisper = not RedeemerDisplayWhisper;
		whisperText = "|cffffffff[";
		if (RedeemerDisplayWhisper) then
			whisperText = whisperText.."|cff00ff00on";
		else
			whisperText = whisperText.."|cffff0000off";
		end
		whisperText = whisperText.."|cffffffff]";
		DEFAULT_CHAT_FRAME:AddMessage("Quotes whispered to target toggled "..whisperText, 0.25, 0.88, 0.88);

	else
		sayText = "|cffffffff[";
		if (RedeemerDisplaySay) then
			sayText = sayText.."|cff00ff00on";
		else
			sayText = sayText.."|cffff0000off";
		end
		sayText = sayText.."|cffffffff]";
		partyText = "|cffffffff[";
		if (RedeemerDisplayParty) then
			partyText = partyText.."|cff00ff00on";
		else
			partyText = partyText.."|cffff0000off";
		end
		partyText = partyText.."|cffffffff]";
		raidText = "|cffffffff[";
		if (RedeemerDisplayRaid) then
			raidText = raidText.."|cff00ff00on";
		else
			raidText = raidText.."|cffff0000off";
		end
		raidText = raidText.."|cffffffff]";
		whisperText = "|cffffffff[";
		if (RedeemerDisplayWhisper) then
			whisperText = whisperText.."|cff00ff00on";
		else
			whisperText = whisperText.."|cffff0000off";
		end
		whisperText = whisperText.."|cffffffff]";
		DEFAULT_CHAT_FRAME:AddMessage("/redeemer say: Toggle sending quotes to /say "..sayText, 0.25, 0.88, 0.88);
		DEFAULT_CHAT_FRAME:AddMessage("/redeemer party: Toggle sending quotes to /party "..partyText, 0.25, 0.88, 0.88);
		DEFAULT_CHAT_FRAME:AddMessage("/redeemer raid: Toggle sending quotes to /raid "..raidText, 0.25, 0.88, 0.88);
		DEFAULT_CHAT_FRAME:AddMessage("/redeemer whisper: Toggle whispering quotes to target "..whisperText, 0.25, 0.88, 0.88);
	end

	--DEFAULT_CHAT_FRAME:AddMessage("Command: "..cmd);

end

--Interface Options Panel functions
--[[
function RedeemerPanel_OnLoad(panel)

	panel.name = "Redeemer";
	panel.okay = RedeemerPanel_Okay(panel);
	panel.cancel = RedeemerPanel_Cancel(panel);
	panel.default = RedeemerPanel_Default(panel);
	InterfaceOptions_AddCategory(panel);

	RedeemerPanel_LoadSettings(panel);
]]--
--[[
	local quotesPanel = RedeemerQuotesPanel;
	quotesPanel.name = "Redeemer Quotes";
	quotesPanel.parent = "Redeemer";
	InterfaceOptions_AddCategory(quotesPanel);

	local optionsPanel = RedeemerOptionsPanel;
	optionsPanel.name = "Redeemer Options";
	optionsPanel.parent = "Redeemer";
	InterfaceOptions_AddCategory(optionsPanel);
]]--
--[[
end


function RedeemerPanel_LoadSettings(panel)

	--defaults: DisplaySay = true, DisplayParty = false, DisplayRaid = false

	Redeemer_TestVars();

	local panelName = panel:GetName();

	if (RedeemerDisplaySay == nil) then
		RedeemerDisplaySay = true;
	end

	if (RedeemerDisplayParty == nil) then
		RedeemerDisplayParty = false;
	end

	if (RedeemerDisplayRaid == nil) then
		RedeemerDisplayRaid = false;
	end

	getglobal(panelName.."CheckDisplaySay"):SetChecked(RedeemerDisplaySay);
	getglobal(panelName.."CheckDisplayParty"):SetChecked(RedeemerDisplayParty);
	getglobal(panelName.."CheckDisplayRaid"):SetChecked(RedeemerDisplayRaid);


end

function RedeemerPanel_Okay(panel)

	local panelName = panel:GetName();

	setglobal("RedeemerDisplaySay", DisplaySay);
	setglobal("RedeemerDisplayParty", DisplayParty);
	setglobal("RedeemerDisplayRaid", DisplayRaid);

	RedeemerPanel_LoadSettings(panel);

end

function RedeemerPanel_Cancel(panel)

	local panelName = panel:GetName();

		DisplaySay = nil;
		DisplayParty = nil;
		DisplayRaid = nil;

		RedeemerPanel_LoadSettings(panel);

end

function RedeemerPanel_Default(panel)

	setglobal("RedeemerDisplaySay", true);
	setglobal("RedeemerDisplayParty", false);
	setglobal("RedeemerDisplayRaid", false);

	RedeemerPanel_LoadSettings(panel);

end

function Redeemer_TestVars()

	local say;
	local party;
	local raid;

	if (RedeemerDisplaySay) then
		say = "1";
	elseif (RedeemerDisplaySay == nil) then
		say = "-";
	else
		say = "0";
	end
	if (RedeemerDisplayParty) then
		party = "1";
	elseif (RedeemerDisplayParty == nil) then
		party = "-";
	else
		party = "0";
	end
	if (RedeemerDisplayRaid) then
		raid = "1";
	elseif (RedeemerDisplayRaid == nil) then
		raid = "-";
	else
		raid = "0";
	end

	message(say..party..raid);

end
]]--