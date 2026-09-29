-- name: [CS] Smiling Friends 64
-- description: The Smiling Friends are tasked with making the Mushroom Kingdom smile.
--[[
    API Documentation for Character Select can be found below:
    https://github.com/Squishy6094/character-select-coop/blob/main/API-doc.md
]]

local E_MODEL_CHARLIESM_MODEL = smlua_model_util_get_id("charliesm_geo")

local TEXT_MOD_NAME = "Charlie Dompler"

local VOICETABLE_CHARLIESM = {
    [CHAR_SOUND_ATTACKED] = 'charlie_ow.ogg',
	[CHAR_SOUND_EEUH] = 'charlie_alright.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'charlie_hereigo.ogg',
    [CHAR_SOUND_DROWNING] = 'charlie_death.ogg',
    [CHAR_SOUND_DYING] = 'charlie_death.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'charlie_uh2.ogg',
    [CHAR_SOUND_HAHA] = 'charlie_cool.ogg',
    [CHAR_SOUND_HAHA_2] = 'charlie_alright.ogg',
	[CHAR_SOUND_DOH] = 'charlie_goddammit.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'charlie_victory.ogg',
    [CHAR_SOUND_HOOHOO] = 'charlie_ok.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'charlie_mamamia.ogg',
	[CHAR_SOUND_OKEY_DOKEY] = 'charlie_cool.ogg',
    [CHAR_SOUND_ON_FIRE] = 'charlie_scream.ogg',
    [CHAR_SOUND_OOOF] = 'charlie_oh.ogg',
    [CHAR_SOUND_OOOF2] = 'charlie_ow.ogg',
	[CHAR_SOUND_HRMM] = 'charlie_erm.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'charlie_alright.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'charlie_punch1.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'charlie_punch2.ogg',
	[CHAR_SOUND_UH] = 'charlie_uh.ogg',
    [CHAR_SOUND_UH2] = 'charlie_uh2.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'charlie_threat.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'charlie_cool.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'charlie_scream.ogg',
    [CHAR_SOUND_WAH2] = 'charlie_uh.ogg',
    [CHAR_SOUND_WHOA] = 'charlie_woah.ogg',
    [CHAR_SOUND_YAHOO] = 'charlie_woah.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'charlie_punch1.ogg', 'charlie_punch2.ogg', 'charlie_alright.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'charlie_punch1.ogg', 'charlie_punch2.ogg', 'charlie_alright.ogg'},
}

if _G.charSelectExists then
    _G.charSelect.character_add("Charlie Dompler", {"Why don't we just cut our losses and get out of here."}, "eldritchmeat", {r = 255, g = 245, b = 71}, E_MODEL_CHARLIESM_MODEL, CT_MARIO, get_texture_info("charlieicon"))

    _G.charSelect.character_add_voice(E_MODEL_CHARLIESM_MODEL, VOICETABLE_CHARLIESM)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHARLIESM then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_CHARLIESM then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#a32317\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end


local E_MODEL_PIM_MODEL = smlua_model_util_get_id("pim_geo")

local TEXT_MOD_NAME = "Pim Pimling"

local VOICETABLE_PIM = {
    [CHAR_SOUND_ATTACKED] = 'pim_what.ogg',
	[CHAR_SOUND_EEUH] = 'pim_um.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'pim_amazing.ogg',
    [CHAR_SOUND_DROWNING] = 'pim_death.ogg',
    [CHAR_SOUND_DYING] = 'pim_death.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'pim_yay.ogg',
    [CHAR_SOUND_HAHA] = 'pim_haha.ogg',
    [CHAR_SOUND_HAHA_2] = 'pim_alright.ogg',
	[CHAR_SOUND_DOH] = 'pim_what.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'pim_destiny.ogg',
    [CHAR_SOUND_HOOHOO] = 'pim_perfect.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'pim_mamamia.ogg',
	[CHAR_SOUND_OKEY_DOKEY] = 'pim_yay.ogg',
    [CHAR_SOUND_ON_FIRE] = 'pim_scream.ogg',
    [CHAR_SOUND_OOOF] = 'pim_oh.ogg',
    [CHAR_SOUND_OOOF2] = 'pim_oops.ogg',
	[CHAR_SOUND_HRMM] = 'pim_hm.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'pim_alright.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'pim_oh2.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'pim_ah.ogg',
	[CHAR_SOUND_UH] = 'pim_uh.ogg',
    [CHAR_SOUND_UH2] = 'pim_um.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'pim_sorry.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'pim_yay.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'pim_scream.ogg',
    [CHAR_SOUND_WAH2] = 'pim_uh.ogg',
    [CHAR_SOUND_WHOA] = 'pim_oops.ogg',
    [CHAR_SOUND_YAHOO] = 'pim_wee.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'pim_oh2.ogg', 'pim_ah.ogg', 'pim_alright.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'pim_oh2.ogg', 'pim_ah.ogg', 'pim_alright.ogg'},
}

if _G.charSelectExists then
    _G.charSelect.character_add("Pim Pimling", {"I love kids, Charlie!"}, "eldritchmeat", {r = 253, g = 180, b = 247}, E_MODEL_PIM_MODEL, CT_MARIO, get_texture_info("pimicon"))

    _G.charSelect.character_add_voice(E_MODEL_PIM_MODEL, VOICETABLE_PIM)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_PIM then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_PIM then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#a32317\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end


local E_MODEL_ALLAN_MODEL = smlua_model_util_get_id("allan_geo")

local TEXT_MOD_NAME = "Allan Red"

local VOICETABLE_ALLAN = {
    [CHAR_SOUND_ATTACKED] = 'allan_ow.ogg',
	[CHAR_SOUND_EEUH] = 'allan_oh.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'allan_cheeseintro.ogg',
    [CHAR_SOUND_DROWNING] = 'allan_death.ogg',
    [CHAR_SOUND_DYING] = 'allan_death.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'allan_whatever.ogg',
    [CHAR_SOUND_HAHA] = 'allan_haha.ogg',
    [CHAR_SOUND_HAHA_2] = 'allan_whatever.ogg',
	[CHAR_SOUND_DOH] = 'allan_goddammit.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'allan_finally.ogg',
    [CHAR_SOUND_HOOHOO] = 'allan_oh.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'allan_annoying.ogg',
	[CHAR_SOUND_OKEY_DOKEY] = 'allan_whatever.ogg',
    [CHAR_SOUND_ON_FIRE] = 'allan_scream.ogg',
    [CHAR_SOUND_OOOF] = 'allan_ow.ogg',
    [CHAR_SOUND_OOOF2] = 'allan_wtf.ogg',
	[CHAR_SOUND_HRMM] = 'allan_uh.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'allan_uh2.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'allan_ub.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'allan_ugh.ogg',
	[CHAR_SOUND_UH] = 'allan_uh.ogg',
    [CHAR_SOUND_UH2] = 'allan_woah.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'allan_cheese.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'allan_whatever.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'allan_scream.ogg',
    [CHAR_SOUND_WAH2] = 'allan_ugh.ogg',
    [CHAR_SOUND_WHOA] = 'allan_woah.ogg',
    [CHAR_SOUND_YAHOO] = 'allan_uh2.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'allan_ugh.ogg', 'allan_ub.ogg', 'allan_uh2.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'allan_ugh.ogg', 'allan_ub.ogg', 'allan_uh2.ogg'},
}

if _G.charSelectExists then
    _G.charSelect.character_add("Allan Red", {"I JUST WANTED MY CHEEEEESE!"}, "eldritchmeat", {r = 250, g = 104, b = 103}, E_MODEL_ALLAN_MODEL, CT_MARIO, get_texture_info("allanicon"))

    _G.charSelect.character_add_voice(E_MODEL_ALLAN_MODEL, VOICETABLE_ALLAN)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_ALLAN then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_ALLAN then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#a32317\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end


local E_MODEL_GLEP_MODEL = smlua_model_util_get_id("glep_geo")

local TEXT_MOD_NAME = "Glep Simpson"

local VOICETABLE_GLEP = {
    [CHAR_SOUND_ATTACKED] = 'glep_hurt.ogg',
	[CHAR_SOUND_EEUH] = 'glep_ba.ogg',
	[CHAR_SOUND_LETS_A_GO] = 'glep_eskuboyo.ogg',
    [CHAR_SOUND_DROWNING] = 'glep_death.ogg',
    [CHAR_SOUND_DYING] = 'glep_death.ogg',
    [CHAR_SOUND_GROUND_POUND_WAH] = 'glep_pensive.ogg',
    [CHAR_SOUND_HAHA] = 'glep_pensive.ogg',
    [CHAR_SOUND_HAHA_2] = 'glep_sha.ogg',
	[CHAR_SOUND_DOH] = 'glep_hurt.ogg',
    [CHAR_SOUND_HERE_WE_GO] = 'glep_dance.ogg',
    [CHAR_SOUND_HOOHOO] = 'glep_heeya.ogg',
    [CHAR_SOUND_MAMA_MIA] = 'glep_mad.ogg',
	[CHAR_SOUND_OKEY_DOKEY] = 'glep_read.ogg',
    [CHAR_SOUND_ON_FIRE] = 'glep_mad.ogg',
    [CHAR_SOUND_OOOF] = 'glep_ba.ogg',
    [CHAR_SOUND_OOOF2] = 'glep_hurt.ogg',
	[CHAR_SOUND_HRMM] = 'glep_heh.ogg',
    [CHAR_SOUND_PUNCH_HOO] = 'glep_heeya.ogg',
    [CHAR_SOUND_PUNCH_WAH] = 'glep_spit.ogg',
    [CHAR_SOUND_PUNCH_YAH] = 'glep_ess.ogg',
	[CHAR_SOUND_UH] = 'glep_ba.ogg',
    [CHAR_SOUND_UH2] = 'glep_sheeg.ogg',
    [CHAR_SOUND_SO_LONGA_BOWSER] = 'glep_mad.ogg',
    [CHAR_SOUND_TWIRL_BOUNCE] = 'glep_read.ogg',
    [CHAR_SOUND_WAAAOOOW] = 'glep_mad.ogg',
    [CHAR_SOUND_WAH2] = 'glep_heeya.ogg',
    [CHAR_SOUND_WHOA] = 'glep_sheeg.ogg',
    [CHAR_SOUND_YAHOO] = 'glep_sha.ogg',
    [CHAR_SOUND_YAHOO_WAHA_YIPPEE] = {'glep_ess.ogg', 'glep_heh.ogg', 'glep_heeya.ogg'},
    [CHAR_SOUND_YAH_WAH_HOO] = {'glep_ess.ogg', 'glep_spit.ogg', 'glep_heeya.ogg'},
}

if _G.charSelectExists then
    _G.charSelect.character_add("Glep Simpson", {"He's got that raw, bad boy edge."}, "eldritchmeat", {r = 135, g = 252, b = 135}, E_MODEL_GLEP_MODEL, CT_TOAD, get_texture_info("glepicon"))

    _G.charSelect.character_add_voice(E_MODEL_GLEP_MODEL, VOICETABLE_GLEP)
    hook_event(HOOK_CHARACTER_SOUND, function (m, sound)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_GLEP then return _G.charSelect.voice.sound(m, sound) end
    end)
    hook_event(HOOK_MARIO_UPDATE, function (m)
        if _G.charSelect.character_get_voice(m) == VOICETABLE_GLEP then return _G.charSelect.voice.snore(m) end
    end)
else
    djui_popup_create("\\#a32317\\\n"..TEXT_MOD_NAME.."\nRequires the Character Select Mod\nto use as a Library!\n\nPlease turn on the Character Select Mod\nand Restart the Room!", 6)
end