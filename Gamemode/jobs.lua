local GAMEMODE = GAMEMODE or GM

--[[--------------------------------------
    Banned Job
    Used for the softban system
----------------------------------------]]
TEAM_BANNED = DarkRP.createJob("Banned", {
    color = Color(255, 0, 0, 255),
    model = {"models/player/skeleton.mdl"},
    description = [[Banned]],
    weapons = {},
    command = "banned",
    max = 0,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    customCheck = function(ply) return false end
})

--CITIZEN--
TEAM_CITIZEN = DarkRP.createJob("Citizen", {
    color = Color(20, 150, 20, 255),
    model = {
        "models/player/Group01/Female_01.mdl",
        "models/player/Group01/Female_02.mdl",
        "models/player/Group01/Female_03.mdl",
        "models/player/Group01/Female_04.mdl",
        "models/player/Group01/Female_06.mdl",
        "models/player/group01/male_01.mdl",
        "models/player/Group01/Male_02.mdl",
        "models/player/Group01/male_03.mdl",
        "models/player/Group01/Male_04.mdl",
        "models/player/Group01/Male_05.mdl",
        "models/player/Group01/Male_06.mdl",
        "models/player/Group01/Male_07.mdl",
        "models/player/Group01/Male_08.mdl",
        "models/player/Group01/Male_09.mdl"
    },
    description = [[The Citizen is the most basic level of society you can hold besides being a hobo. You have no specific role in city life.]],
    weapons = {},
    command = "citizen",
    max = 0,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    category = "Starter Jobs",
})

--CIVIL PROTECTION--
TEAM_POLICE = DarkRP.createJob("Civil Protection", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl", "models/player/police_fem.mdl"},
    description = [[The protector of every citizen that lives in the city.
        You have the power to arrest criminals and protect innocents.
        Hit a player with your arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for their arrest.
        The Battering Ram can also unfreeze frozen props (if enabled).
        Type /wanted <name> to alert the public to the presence of a criminal.]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_glock2", "stunstick", "door_ram", "weaponchecker"},
    command = "cp",
    max = 4,
    salary = GAMEMODE.Config.normalsalary * 1.45,
    admin = 0,
    vote = true,
    hasLicense = true,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Government",
})

--GANGSTER--
TEAM_GANG = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl",
        "models/player/Group03/Female_03.mdl",
        "models/player/Group03/Female_04.mdl",
        "models/player/Group03/Female_06.mdl",
        "models/player/group03/male_01.mdl",
        "models/player/Group03/Male_02.mdl",
        "models/player/Group03/male_03.mdl",
        "models/player/Group03/Male_04.mdl",
        "models/player/Group03/Male_05.mdl",
        "models/player/Group03/Male_06.mdl",
        "models/player/Group03/Male_07.mdl",
        "models/player/Group03/Male_08.mdl",
        "models/player/Group03/Male_09.mdl"},
    description = [[The lowest person of crime.
        A gangster generally works for the Mobboss who runs the crime family.
        The Mob boss sets your agenda and you follow it or you might be punished.]],
    weapons = {},
    command = "gangster",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Basic Jobs",
})

--MOB BOSS--
TEAM_MOB = DarkRP.createJob("Mob boss", {
    color = Color(25, 25, 25, 255),
    model = "models/player/gman_high.mdl",
    description = [[The Mob boss is the boss of the criminals in the city.
        With his power he coordinates the gangsters and forms an efficient crime organization.
        He has the ability to break into houses by using a lockpick.
        The Mob boss posesses the ability to unarrest you.]],
    weapons = {"lockpick", "unarrest_stick"},
    command = "mobboss",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.34,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Basic Jobs",
})

--GUN DEALER--
TEAM_GUN = DarkRP.createJob("Gun Dealer", {
    color = Color(255, 140, 0, 255),
    model = "models/player/monk.mdl",
    description = [[A Gun Dealer is the only person who can sell guns to other people.
        Make sure you aren't caught selling illegal firearms to the public! You might get arrested!]],
    weapons = {},
    command = "gundealer",
    max = 2,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Starter Jobs",
})

--MEDIC--
TEAM_MEDIC = DarkRP.createJob("Medic", {
    color = Color(47, 79, 79, 255),
    model = "models/player/kleiner.mdl",
    description = [[With your medical knowledge you work to restore players to full health.
        Without a medic, people cannot be healed.
        Left click with the Medical Kit to heal other players.
        Right click with the Medical Kit to heal yourself.]],
    weapons = {"med_kit"},
    command = "medic",
    max = 3,
    salary = GAMEMODE.Config.normalsalary,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Basic Jobs",
})

--CIVIL PROTECTION CHIEF--
TEAM_CHIEF = DarkRP.createJob("Civil Protection Chief", {
    color = Color(20, 20, 255, 255),
    model = "models/player/combine_soldier_prisonguard.mdl",
    description = [[The Chief is the leader of the Civil Protection unit.
        Coordinate the police force to enforce law in the city.
        Hit a player with arrest baton to put them in jail.
        Bash a player with a stunstick and they may learn to obey the law.
        The Battering Ram can break down the door of a criminal, with a warrant for his/her arrest.
        Type /wanted <name> to alert the public to the presence of a criminal.
        Type /jailpos to set the Jail Position]],
    weapons = {"arrest_stick", "unarrest_stick", "weapon_deagle2", "stunstick", "door_ram", "weaponchecker"},
    command = "chief",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.67,
    admin = 0,
    vote = false,
    hasLicense = true,
    chief = true,
    NeedToChangeFrom = TEAM_POLICE,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Government",
})

--MAYOR--
TEAM_MAYOR = DarkRP.createJob("Mayor", {
    color = Color(150, 20, 20, 255),
    model = "models/player/breen.mdl",
    description = [[The Mayor of the city creates laws to govern the city.
    If you are the mayor you may create and accept warrants.
    Type /wanted <name>  to warrant a player.
    Type /jailpos to set the Jail Position.
    Type /lockdown initiate a lockdown of the city.
    Everyone must be inside during a lockdown.
    The cops patrol the area.
    /unlockdown to end a lockdown]],
    weapons = {},
    command = "mayor",
    max = 1,
    salary = GAMEMODE.Config.normalsalary * 1.89,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Advanced Jobs",
})

--HOBO--
TEAM_HOBO = DarkRP.createJob("Hobo", {
    color = Color(80, 45, 0, 255),
    model = "models/player/corpse1.mdl",
    description = [[The lowest member of society. Everybody laughs at you.
        You have no home.
        Beg for your food and money
        Sing for everyone who passes to get money
        Make your own wooden home somewhere in a corner or outside someone else's door]],
    weapons = {"weapon_bugbait"},
    command = "hobo",
    max = 5,
    salary = 0,
    admin = 0,
    vote = false,
    hasLicense = false,
    candemote = false,
    hobo = true,
    category = "Governemnt",
})

--COOK--
TEAM_COOK = DarkRP.createJob("Cook", {
    color = Color(238, 99, 99, 255),
    model = "models/player/mossman.mdl",
    description = [[As a cook, it is your responsibility to feed the other members of your city.
        You can spawn a microwave and sell the food you make:
        /buymicrowave]],
    weapons = {},
    command = "cook",
    max = 2,
    salary = 45,
    admin = 0,
    vote = false,
    hasLicense = false,
    cook = true
})

-- Door groups
AddDoorGroup("Government", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)

-- Group chats
DarkRP.createGroupChat(function(ply) return ply:isCP() end)
DarkRP.createGroupChat(TEAM_MOB, TEAM_GANG)
DarkRP.createGroupChat(function(listener, ply) return not ply or ply:Team() == listener:Team() end)

-- Initial team when first spawning
GAMEMODE.DefaultTeam = TEAM_CITIZEN

-- Teams that belong to Civil Protection
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = true,
    [TEAM_CHIEF] = true,
    [TEAM_MAYOR] = true,
}

-- Hitman team
DarkRP.addHitmanTeam(TEAM_MOB)

-- Demote groups
DarkRP.createDemoteGroup("Cops", {TEAM_POLICE, TEAM_CHIEF})
DarkRP.createDemoteGroup("Gangsters", {TEAM_GANG, TEAM_MOB})

-- Default categories
DarkRP.createCategory{
    name = "Starter Jobs",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 0,
}

DarkRP.createCategory{
    name = "Basic Jobs",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 100,
}

DarkRP.createCategory{
    name = "Government",
    categorises = "jobs",
    startExpanded = true,
    color = Color(25, 25, 170, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Advanced Jobs",
    categorises = "jobs",
    startExpanded = true,
    color = Color(75, 75, 75, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 101,
}

DarkRP.createCategory{
    name = "Misc",
    categorises = "jobs",
    startExpanded = true,
    color = Color(0, 107, 0, 255),
    canSee = fp{fn.Id, true},
    sortOrder = 255,
}
