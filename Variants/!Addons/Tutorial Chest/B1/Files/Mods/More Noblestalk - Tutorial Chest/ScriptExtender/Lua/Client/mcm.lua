Mods.BG3MCM.IMGUIAPI:InsertModMenuTab(ModuleUUID, Ext.Loca.GetTranslatedString("GeneralName"), function(tabHeader)
	local button = tabHeader:AddButton(Ext.Loca.GetTranslatedString("AddNoblestalkName"))
	button.IDContext = "add_noblestalk"
	button.SameLine = false
	button:Tooltip():AddText(Ext.Loca.GetTranslatedString("AddNoblestalkTooltip"))
	button.OnClick = function()
		Ext.Net.PostMessageToServer("Add_Noblestalk", "")
	end
	local button = tabHeader:AddButton(Ext.Loca.GetTranslatedString("AddQuestNoblestalkName"))
	button.IDContext = "add_quest_noblestalk"
	button.SameLine = false
	button:Tooltip():AddText(Ext.Loca.GetTranslatedString("AddQuestNoblestalkTooltip"))
	button.OnClick = function()
		Ext.Net.PostMessageToServer("Add_Quest_Noblestalk", "")
	end
end)

