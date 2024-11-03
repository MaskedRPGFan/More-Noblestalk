Ext.RegisterNetListener("Add_Quest_Noblestalk", function(channel, payload)
	AddQuestNoblestalk()
end)

Ext.RegisterNetListener("Add_Noblestalk", function(channel, payload)
	AddNoblestalk()
end)

function AddQuestNoblestalk()
	Osi.ToInventory("S_UND_MushroomHunter_Noblestalk_09561b3f-f556-4a01-b289-9b362bc0d43a", Osi.GetHostCharacter(), 1, 1, 1)
end

function AddNoblestalk(value)
	value = value or MCM.Get("normal_noblestalk")
	if value and value >= 1 and value <= 100 then
		Osi.TemplateAddTo("48c679c1-b713-4d2f-9bba-1c43ed654404", Osi.GetHostCharacter(), value)
	end
end
