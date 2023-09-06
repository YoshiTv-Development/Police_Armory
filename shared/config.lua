Config = {}

Config.LogDiscord = {
	PrintF8 = "^0[Yoshi Development]^0 ha startato correttamente: "..GetCurrentResourceName(),
    Webhooks = 'Webhooks Here',
    Color = 8492048
}

Config.Armory = {
	Event = 'prendi:armamento',
    Icon = 'fa-solid fa-shield-halved',
    Label = 'Prendi Armamento',
    Groups = 'polizia',
	Ped = 's_m_m_armoured_01',
	CoordsPed = vector4(454.0460, -980.0172, 29.6896, 90.4297),
	Wait = 60000,
}

ItemRicevere = {
	'armour',
	'WEAPON_PISTOL', 
	'bandage',
}

Config.Lang = {
    successarmory = 'Hai preso il tuo armamento',
    errorarmory = 'Devi aspettare prima di riprendere il tuo armamento',
}