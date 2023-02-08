------------------------------------------------------------------------------------------------------------------------
-- Meta Ability Progressioni Constants
-- Author Morticai (META) - (https://www.coregames.com/user/d1073dbcc404405cbef8ce728e53d380)
-- Date: 2021/4/11
-- Version 0.1.11
------------------------------------------------------------------------------------------------------------------------
local API = {}
------------------------------------------------------------------------------------------------------------------------
-- CONSTANTS
------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------
-- STORAGE KEYS -- DO NOT EDIT
------------------------------------------------------------------------------------------------------------------------
API.STORAGE = {
    VERSION = 1,
    ABILITY_PROGRESSION = 2,
    COSMETIC = 3,
    CURRENCY = 4,
    EQUIPPED_COSMETIC = 5,
    DAILY_SHOP = 6,
    PERKS = 7,
    GAME_PLAYER_STATS = 8,
    CLASS_PROGRESSION = 9,
    CONSUMABLE = 10,
    ACHIEVEMENTS = 11,
    PROGRESSION_MULTIPLIERS = 12,
    CLASS_FAVORITE = 13,
    ADMIN_PERKS = 14,
    TRAINING_STATUS = 15,
    REWARD_POINTS = 16
}

------------------------------------------------------------------------------------------------------------------------
-- GAME INFO KEYS
------------------------------------------------------------------------------------------------------------------------
API.TEAM = {
    ORC = 1,
    ELF = 2
}

------------------------------------------------------------------------------------------------------------------------
-- PROGRESS KEYS
------------------------------------------------------------------------------------------------------------------------
-- CLASS KEYS
API.CLASS = {
    WARRIOR = 1,
    MAGE = 2,
    HUNTER = 3,
    HEALER = 4,
    ASSASSIN = 5
}

-- BINDING KEYS
API.BIND = {
    Q = 1,
    E = 2,
    R = 3,
    T = 4,
    LMB = 5,
    RMB = 6,
    SHIFT = 7
}

-- PROGRESS KEYS
API.PROGRESS = {
    LEVEL = 1,
    XP = 2
}

-- STATUS EFFECT KEYS
API.STATUS_EFFECT = {
    BLEED = 1,
    BURN = 2,
    POISON = 3,
    SLOW = 4,
    SPEED_BOOST = 5,
    STUN = 6
}

-- REWARD POINT KEYS
API.REWARD_POINTS = {
    [1] = {name = "Play 3 Rounds", amount = 200, required = 3},
    [2] = {name = "Win 1 Round", amount = 100, required = 1},
    [3] = {name = "Capture 3 Points", amount = 100, required = 3}
}

API.STARTING_LEVEL = 1
API.MAX_LEVEL = 10
API.MAX_CLASS_LEVEL = 50

API.CLASS_NAME = {
    [API.CLASS.WARRIOR] = "Warrior",
    [API.CLASS.MAGE] = "Mage",
    [API.CLASS.HUNTER] = "Hunter",
    [API.CLASS.HEALER] = "Healer",
    [API.CLASS.ASSASSIN] = "Assassin"
}

API.CLASS_HEALTH = {
    [API.CLASS.WARRIOR] = 430,
    [API.CLASS.MAGE] = 260,
    [API.CLASS.HUNTER] = 350,
    [API.CLASS.HEALER] = 300,
    [API.CLASS.ASSASSIN] = 320
}

API.CLASS_REGEN = {
    [API.CLASS.WARRIOR] = 18.0,
    [API.CLASS.MAGE] = 4.0,
    [API.CLASS.HUNTER] = 6.0,
    [API.CLASS.HEALER] = 2.0,
    [API.CLASS.ASSASSIN] = 9.0
}

API.ReqXp = {
    [1] = 1000,
    [2] = 2145,
    [3] = 3420,
    [4] = 4830,
    [5] = 6375,
    [6] = 8060,
    [7] = 9890,
    [8] = 11865,
    [9] = 13995,
    [10] = 16295,
    [11] = 18775,
    [12] = 21455,
    [13] = 24340,
    [14] = 27435,
    [15] = 30745,
    [16] = 34295,
    [17] = 38095,
    [18] = 42145,
    [19] = 46465,
    [20] = 51065,
    [21] = 55955,
    [22] = 61155,
    [23] = 66675,
    [24] = 72525,
    [25] = 78725,
    [26] = 85285,
    [27] = 92215,
    [28] = 99535,
    [29] = 107255,
    [30] = 115385,
    [31] = 123945,
    [32] = 132945,
    [33] = 142415,
    [34] = 152415,
    [35] = 162855,
    [36] = 173805,
    [37] = 185275,
    [38] = 197275,
    [39] = 209835,
    [40] = 222965,
    [41] = 236675,
    [42] = 250995,
    [43] = 265935,
    [44] = 281505,
    [45] = 297725,
    [46] = 314625,
    [47] = 332215,
    [48] = 350505,
    [49] = 369505,
    [50] = 389505
}

API.DIMINISHING_RETURNS = {
    -- Uses a float 1.0 = 100% , 0.05 = 5%
    [1] = 1.0,
    [2] = 1.0,
    [3] = 1.0,
    [4] = 1.0,
    [5] = 0.80,
    [6] = 0.60,
    [7] = 0.40,
    [8] = 0.20,
    [9] = 0.10,
    [10] = 0.05
}

--Default XP Values before multipliers
API.CLASS_XP = {
    Kills = 300,
    Captures = 900,
    CapAssists = 600,
    Wins = 2500,
    Interrupt = 25, -- Interrupt Capture Point Player
    KillOnPoint = 100
}

-- Default Gold Values
API.GOLD_PER_KILL = 25
API.GOLD_PER_CAPTURE = 50
API.KILL_STREAK_BONUS_GOLD = 5
API.CLASS_LEVEL_BONUS_GOLD = 0 --Keep at 0 for no bonus
API.MAX_KILL_GOLD = 1000000 --#TEMP For Testing

-- Server Wide Mulitpliers (0 is default no multiplier)
API.EVENT_XP_MULITPLIER = 0
API.EVENT_GOLD_MULTIPLIER = 0
API.EVENT_SHARD_MULTIPLIER = 0
API.EVENT_COSMETIC_MULTIPLIER = 0
API.EVENT_DAILY_SHOP_DISCOUNT = 1.0 --Leave at 1.0 for 100% (Default Price)

-- VIP Player Values
API.VIP_XP_MULTIPLIER = 0.5 -- 25% Bonus
API.VIP_GOLD_MULTIPLIER = 0.5 -- 25% Bonus
API.VIP_SHARDS_MULTIPLIER = 0.5 -- 25% Bonus
API.VIP_COSMETIC_MULTIPLIER = 0.5 -- 25% Bonus
API.VIP_DAILY_SHOP_DISCOUNT = 0.8 -- 10% Discount in Daily Shop
API.VIP_SERVER_MULTIPLIER = 0.0 -- Each VIP in a server gives a 5% boost to both gold & xp

--STARTER Pack Muliplier Value
API.STARTER_PACK_MULTIPLIER = 0 -- 50% To XP & Currency Gains
API.STARTER_PACK_SHARDS_MULTIPLIER = 0 -- Currently A 0% Bonus
API.STARTER_PACK_COSMETIC_MULTIPLIER = 0 -- 0% Bonus to cosmetic muliplier
API.STARTER_PACK_GOLD_BONUS = 10000 -- How much Gold a player gets when purchasing the Starter Pack
API.STARTER_PACK_PREMIUM_BONUS = 350 -- How many cosmetic tokens a player gets when purchasing the Starter Pack

-- Mulipliers for Server Boost Perks - Gold & XP
API.XP_SERVER_BOOST_MULTIPLIER = 0.5 -- XP Boost 100% for the entire server
API.GOLD_SERVER_BOOST_MULTIPLIER = 0.5 -- Gold Boost 100% for the entire server
API.XP_SERVER_BOOST_DURATION = 60 * 30 -- Currently set to 1 hour
API.GOLD_SERVER_BOOST_DURATION = 60 * 30 -- Currently set to 1 hour

-- Mulipliers for Server Boost Perks - Gold & XP
API.XP_SELF_BOOST_MULTIPLIER = 1 -- XP Boost 100% for the entire server
API.GOLD_SELF_BOOST_MULTIPLIER = 1 -- Gold Boost 100% for the entire server
API.XP_SELF_BOOST_DURATION = 60 * 60 -- Currently set to 1 hour
API.GOLD_SELF_BOOST_DURATION = 60 * 60 -- Currently set to 1 hour

-- Will cap a players total multipliers to make sure nothing gets out of control
API.MAX_TOTAL_MULTIPLIER = 3 -- Max bonus 300%
API.TARGET_LEVEL_XP_BONUS = 10 -- Mulitplied by the targets level IE: level 10 * 5 = 50xp bonus

API.LEVEL_DIF_BONUS = {
    --Gold player gets from killing a higher level player
    [1] = 5,
    [2] = 10,
    [3] = 15,
    [4] = 20,
    [5] = 25,
    [6] = 30,
    [7] = 35,
    [8] = 40,
    [9] = 45,
    [10] = 50,
    [11] = 55,
    [12] = 60,
    [13] = 65,
    [14] = 70,
    [15] = 75,
    [16] = 80,
    [17] = 85,
    [18] = 90,
    [19] = 95,
    [20] = 100,
    [21] = 105,
    [22] = 110,
    [23] = 115,
    [24] = 120,
    [25] = 140,
    [26] = 150,
    [27] = 160,
    [28] = 170,
    [29] = 180,
    [30] = 190,
    [31] = 200,
    [32] = 220,
    [33] = 240,
    [34] = 260,
    [35] = 280,
    [36] = 300,
    [37] = 330,
    [38] = 360,
    [39] = 390,
    [40] = 420,
    [41] = 450,
    [42] = 480,
    [43] = 500,
    [44] = 500,
    [45] = 500,
    [46] = 500,
    [47] = 500,
    [48] = 500,
    [49] = 500,
    [50] = 500
}

API.POINT_NAMES = {
    [1] = "War Camp",
    [2] = "Airship",
    [3] = "Marketplace",
    [4] = "Old Mine",
    [5] = "Temple Glade"
}

------------------------------------------------------------------------------------------------------------------------
-- CONSUMABLE KEYS
------------------------------------------------------------------------------------------------------------------------

API.CONSUMABLE_KEYS = {
    HEALTH_POTION = 1,
    MOUNT_SPEED = 2
}

API.CONSUMABLES = {
    [API.CONSUMABLE_KEYS.HEALTH_POTION] = {
        BaseHeal = 95,
        LevelMultiplier = 5
    }
}

API.MAX_CONSUMABLE_LEVEL = 10

------------------------------------------------------------------------------------------------------------------------
-- COSMETIC KEYS
------------------------------------------------------------------------------------------------------------------------

-- COSTUME KEYS
API.DEFAULT_SKIN = 1
API.COSTUME_ID = 8

-- COSMETIC SKINS
API.COSMETIC_SKIN = {
    COMMON = 1,
    UNCOMMON = 2,
    RARE = 3,
    LEGENDARY = 4,
    ELEMENTAL = 5,
    ROYAL = 6,
    PUNK = 7,
    JUSTICE = 8,
    AFTERLIFE = 9,
    MILITARY = 10,
    FOLIAGE = 11,
    ALTERNATIVE = 12
}

-- BINDING KEYS
API.COSMETIC_BIND = {
    Q = 1,
    E = 2,
    R = 3,
    T = 4,
    OUTFIT = 8
}

------------------------------------------------------------------------------------------------------------------------
-- RESOURCE NAMES
------------------------------------------------------------------------------------------------------------------------
API.COSTUME_STRING = "08_Costume"
API.CLASS_LEVEL = "C_LEVEL"
API.ACCOUNT_LEVEL = "A_LEVEL"
API.CLASS_RES = "CLASS_MAP"
API.SKIN_RES = "SKIN_MAP"
API.ROUND_DAMAGE = "RDMG"
API.ROUND_HEALING = "RHEAL"
API.TRAINING_STATUS = "TSTATUS"

API.COMBAT_STATS = {
    TOTAL_DAMAGE_RES = "TOTALDMG",
    TOTAL_HEALING_RES = "TOTALHEAL",
    CURRENT_KILL_STREAK = "CKSTREAK",
    LARGEST_KILL_STREAK = "LKSTREAK",
    ULTIMATE_KILL = "ULTKILL",
    TOTAL_CAPTURE_POINTS = "TOTALCAP",
    CAPTURE_ASSISTS = "CAPASSISTS",
    ASSIST_KILLS = "ASSISTKILLS"
}

API.GAME_PLAYER_STATS = {
    [1] = "GAMES_WON",
    [2] = "GAMES_LOST",
    [3] = "TOTAL_GAMES",
    [4] = "weightedWinRate",
    [5] = "winOfTheDayTimeStamp",
    [6] = "LIFE_TIME_KILLS"
}

API.LIFE_TIME_KILLS = API.GAME_PLAYER_STATS[6]
API.WIN_OF_THE_DAY_TIME = API.GAME_PLAYER_STATS[5]
API.WEIGHTED_WINS_KEY = 4

API.GAMES_WON = API.GAME_PLAYER_STATS[1]
API.GAMES_LOST = API.GAME_PLAYER_STATS[2]
API.TOTAL_GAMES = API.GAME_PLAYER_STATS[3]
API.WEIGHTED_WINS = API.GAME_PLAYER_STATS[4]

API.CURRENCY = {
    [1] = "GOLD",
    [2] = "COSM_TOKEN"
}

API.GOLD = API.CURRENCY[1]
API.COSMETIC_TOKEN = API.CURRENCY[2]

-- PERK KEYS
API.VIP_MEMBERSHIP_KEY = "IsVip"

-- Used For Perk Multiplier Timestamps
API.SELF_BOOST_KEYS = {
    [1] = "PXBK",
    [2] = "PGBK"
}
API.SELF_XP_BOOST_KEY = API.SELF_BOOST_KEYS[1]
API.SELF_GOLD_BOOST_KEY = API.SELF_BOOST_KEYS[2]

API.SERVER_XP_BOOST_KEY = "sxt"
API.SERVER_GOLD_BOOST_KEY = "sgt"
API.STARTER_PACK_KEY = "SPK"

API.PERK_STORAGE_KEYS = {
    VIP_MEMBER = 1,
    SELF_GOLD_BOOST = 2,
    SELF_XP_BOOST = 3,
    SERVER_XP_BOOST = 4,
    SERVER_GOLD_BOOST = 5,
    GOLD_PACK1 = 6,
    GOLD_PACK2 = 7,
    GOLD_PACK3 = 8,
    GOLD_PACK4 = 9,
    PREM_PACK1 = 10,
    PREM_PACK2 = 11,
    PREM_PACK3 = 12,
    PREM_PACK4 = 13,
    STARTER_PACK = 14
}

API.PERK_TYPES = {
    FLAG = 1,
    CURRENCY = 2,
    STARTER_PACK = 3
}

------------------------------------------------------------------------------------------------------------------------
-- COMBAT TIMERS
------------------------------------------------------------------------------------------------------------------------
API.MOUNT_COOLDOWN_TIME = 4

------------------------------------------------------------------------------------------------------------------------
return API
