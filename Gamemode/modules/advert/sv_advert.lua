local function rp_advert(pl,text)
	if text == "" then
		DarkRP.notify(pl,1,4,"Invalid Args")
		return ""
	end
	pl:addMoney(-500)
	DarkRP.notify(pl,0,4,"You just bought an advert for 500$")
	for k, v in pairs(player.GetAll()) do
		DarkRP.talkToPerson(v, Color(255,0,0), "[ADVERT] " .. pl:Nick(), Color(255, 255, 0, 255), text, pl)
	end
	return ""
end

DarkRP.declareChatCommand{
    command = "advert",
    description = "Advert something to the world.",
    delay = 5
}

DarkRP.defineChatCommand("advert", rp_advert)