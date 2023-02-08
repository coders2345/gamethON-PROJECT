local AdminData = {}

AdminRanks = {
    None = 0,
    Admin = 1,
    HigherAdmin = 2,

}

Rank = {
    Rolok           = AdminRanks.HigherAdmin,
    Chris           = AdminRanks.HigherAdmin,
    Vitriol08       = AdminRanks.HigherAdmin,
    Vitriol         = AdminRanks.HigherAdmin,
    Buckmonster     = AdminRanks.HigherAdmin,
    ManticoreGames  = AdminRanks.HigherAdmin,
    Basilisk        = AdminRanks.HigherAdmin,
    Mehaji          = AdminRanks.HigherAdmin,
    Griffin         = AdminRanks.HigherAdmin,
    Morticai        = AdminRanks.HigherAdmin,
    Bigglebuns      = AdminRanks.HigherAdmin,
    Tobs            = AdminRanks.HigherAdmin,

    -- standardcombo   = AdminRanks.Admin,
    -- blaking707      = AdminRanks.Admin,
    -- Coderz          = AdminRanks.Admin,
    -- Datonare        = AdminRanks.Admin,
    -- Divided         = AdminRanks.Admin,
    -- estlogic        = AdminRanks.Admin,
    -- nicholasforeman = AdminRanks.Admin,
    -- Ooccoo          = AdminRanks.Admin,
    -- Aggripina       = AdminRanks.Admin,
    -- AwkwardGameDev  = AdminRanks.Admin,
    -- Daddio          = AdminRanks.Admin,
    -- mjcortes782     = AdminRanks.Admin,
    -- Keppu           = AdminRanks.Admin,
    -- KonzZwodrei     = AdminRanks.Admin,
    -- Melamoryxq      = AdminRanks.Admin,
    -- Mucusinator     = AdminRanks.Admin,
    -- WitcherSilver   = AdminRanks.Admin,
    -- AJ              = AdminRanks.Admin,
    -- riffraff        = AdminRanks.Admin,
    -- Sobchak         = AdminRanks.Admin,
    -- Scav            = AdminRanks.Admin,
    -- Beekzor         = AdminRanks.Admin,
    -- aBomb           = AdminRanks.Admin,
    -- blackdheart     = AdminRanks.Admin,
    -- BreadMan        = AdminRanks.Admin,
    -- Bumblebear      = AdminRanks.Admin,
    -- bunnychen       = AdminRanks.Admin,
    -- Carbide         = AdminRanks.Admin,
    -- codeHeavy       = AdminRanks.Admin,
    -- CoreVideo       = AdminRanks.Admin,
    -- deadlyfishesMC  = AdminRanks.Admin,
    -- Dracowolfie     = AdminRanks.Admin,
    -- featurecreeper  = AdminRanks.Admin,
    -- Gabunir         = AdminRanks.Admin,
    -- JayDee          = AdminRanks.Admin,
    -- kytsu           = AdminRanks.Admin,
    -- lokii           = AdminRanks.Admin,
    -- Lucidish        = AdminRanks.Admin,
    -- manticoreian    = AdminRanks.Admin,
    -- max             = AdminRanks.Admin,
    -- mcamp           = AdminRanks.Admin,
    -- mrbigfists      = AdminRanks.Admin,
    -- Neurosin        = AdminRanks.Admin,
    -- pchiu           = AdminRanks.Admin,
    -- qualispec       = AdminRanks.Admin,
    -- Robotron        = AdminRanks.Admin,
    -- Sasha           = AdminRanks.Admin,
    -- SpaceBandit     = AdminRanks.Admin,
    -- Squirtle        = AdminRanks.Admin,
    -- Stanzilla       = AdminRanks.Admin,
    -- structbar       = AdminRanks.Admin,
    -- sumoflab        = AdminRanks.Admin,
    -- tjarvis         = AdminRanks.Admin,
    -- RyanZ           = AdminRanks.Admin,
    -- RebherCore      = AdminRanks.Admin,
    -- Memori          = AdminRanks.Admin,
    -- Nezberet        = AdminRanks.Admin,
    -- plasmabacon     = AdminRanks.Admin,
    -- Phyronnaz       = AdminRanks.Admin,
    -- Waffle          = AdminRanks.Admin,
    -- Staypunny       = AdminRanks.Admin,
    -- Carbide         = AdminRanks.Admin,
    -- Ronin47c        = AdminRanks.Admin,
    -- Ghost_dog       = AdminRanks.Admin,
    -- Zezkai          = AdminRanks.Admin,
    -- Sakerin         = AdminRanks.Admin,
    -- cityofmercy     = AdminRanks.Admin,
}

AdminData.AdminRanks = AdminRanks
AdminData.Rank = Rank

function GetRank(player)
  --if Environment.IsPreview() then return AdminRanks.HigherAdmin end
  return Rank[player.name] or AdminRanks.None
  --return AdminRanks.HigherAdmin
end

return {
  AdminRanks = AdminRanks,
  Rank = Rank,
  GetRank = GetRank,
}