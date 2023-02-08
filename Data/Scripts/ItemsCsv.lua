local OrderedTable = require(script:GetCustomProperty("OrderedTable"))

local SIZE_SMALL = 1
local SIZE_MEDIUM = 2
local SIZE_LARGE = 3

local sizeList = {
	SIZE_SMALL, SIZE_MEDIUM, SIZE_LARGE
}
local sizes = {}
for i=1,#sizeList,1 do sizes[sizeList[i]] = 1 end

local areaList = {
	"CASTLE",
	"FARM",
	"TEST",
	"ALL",
	"LAKE",
	"MARKET",
	"RACETRACK",
	"TUNNEL",
	"RAPTORCAVE",
	"MANSION",
	"LOWERLAKE",
	"FISHINGALL",
	"FISHINGUPPERLAKE",
	"FISHINGMIDDLELAKE",
	"FISHINGLOWERLAKE",
	"JUNK"
}
local areaIds = {}
for i=1,#areaList,1 do areaIds[areaList[i]] = 1 end

local rarityList = {
	1, 2, 3, 4
}
local rarities = {}
for i=1,#rarityList,1 do rarities[rarityList[i]] = 1 end

local csv = [[
Small Common Item [0],TEST,SMALL,1,10,5,10,F392681897E49369:TestItem_Small_Common,,20,,1
Medium Uncommon Item [1],TEST,MEDIUM,1,10,10,20,34BF4B29B7EBAB07:TestItem_Medium_Uncommon,,10,,2
Large Rare Item [2],TEST,LARGE,1,10,15,30,DA8790B1F57449CC:TestItem_Large_Rare,,5,,3
Ancient Magical Key,ALL,SMALL,3,10,2400,500,C637667262341948:Prop Ancient Gold Key,"Oh, this gate key? ",25,,3
Crusty Iron Thing,FARM,SMALL,1,10,1,0,E6A2F2C28317A173:Prop Ancient Rusty Simple Nail,Maybe it was a nail?,100,,1
Ancient Silver Coin,CASTLE,SMALL,3,10,2500,80,00F122BE8B4D9F65:Prop Ancient Silver Castle Coin,,25,,3
Ornate Silver Spoon,CASTLE,MEDIUM,2,10,250,2,DDC3AE61FDE8F87D:Prop Ornate Silver Spoon,If only you'd been born with this in your mouth,150,,2
Rusty Old Spoon,FARM,MEDIUM,1,10,2,0,D80F82F1E60A98EA:Prop Ornate Rusty Spoon,"You found a spoon, man. Can you feel the rhythm with your hands?",75,,1
Fancy Spoon,CASTLE,MEDIUM,1,10,5,0,0A60F66E7D5A2712:Prop Ornate Worn Spoon,Time to dig up some soup.,75,,1
Antique Iron Sword,CASTLE,LARGE,3,10,1200,250,09D5B45E6C649B54:Prop Ancient Sword Carlos,Sword of a famed right-handed fighter,25,,3
New Bike Handlebars,TUNNEL,LARGE,1,10,90,0,1CDEC0B7E4C4EDA9:Prop Bike Handlebars,"Look ma, no hands!",75,,1
Rusty Bike Wheel,FARM,LARGE,1,10,30,1,A460C7D815BE5E9B:Prop Bike Wheel,A wheely neat find,75,,1
Broken Bike Wheel,TUNNEL,LARGE,1,10,2,0,4E72876134E7724A:Prop Broken Bike Wheel Spokes,These be bespoke spokes,75,,1
Rusty Bottlecap,ALL,SMALL,1,10,5,1,A897827291A4DD8E:Prop Bottlecap Hay Hay Rusted,Imagine the fallout if this were worth something,200,,1
HayHay Bottlecap,FARM,SMALL,2,10,300,15,A095864EBB996BFE:Prop Bottlecap HayHay New,A perfect condition original HayHay soda cap!,150,,2
Copper Manticoin,ALL,LARGE,1,10,15,1,7F3279B93FABE6E0:Prop Copper Manticoin,A copper for your thoughts,75,,1
Silver Manticoin,ALL,LARGE,2,10,150,10,9EC213383DF77278:Prop Silver Manticoin,Makes you want to hop 'til you drop,150,,2
Gold Manticoin,ALL,LARGE,3,10,1500,100,F6A01D7C6A8762C6:Prop Gold Manticoin,There's gold in them thar hills,25,,3
Rusty Bent Nail,FARM,SMALL,1,10,1,0,CFA82C300E8BF834:Prop Corroded Bent Nail,Has seen better days,75,,1
Rusty Nail,FARM,SMALL,1,10,4,0,D14689E2B1C25E7A:Prop Corroded Nail,Sadly missing both the Scotch and Drambuie,75,,1
Crusty Old Horseshoe,RACETRACK,LARGE,1,10,22,1,ECC6233BD46A38D4:Prop Corroded Old Horseshoe,Doesn't look so lucky,55,,1
Iron Horseshoe,RACETRACK,LARGE,1,10,120,1,1157934B6E6569DE:Prop Iron Horseshoe,Go for a ringer!,100,,1
Golden Horseshoe,RACETRACK,LARGE,3,10,2900,5,0FB4EF248DC9E275:Prop Rare Gold Horseshoe,What sort of farmer can afford these?,16,,3
Old Horseshoe,RACETRACK,LARGE,1,10,45,1,06AB50DD77EC59EB:Prop Rusty Old Horseshoe,"One of two things where ""close"" matters",100,,1
Steel Horseshoe,RACETRACK,LARGE,2,10,300,1,0AE56D46082BFDDD:Prop Steel Horseshoe,The New Balance of horseshoes,125,,2
Lucky Green Horseshoe,RACETRACK,LARGE,4,10,7777,333,0EB63DE233983D39:Prop Rare Lucky Horseshoe,LUCK +5,22,,4
Rusty Paperclip,FARM,SMALL,1,10,3,0,989F71FF7F7CE20F:Prop Corroded Paperclip,It looks like you are trying to metal detect. Would you like help?,100,,1
Rusted Fancy Button,FARM,MEDIUM,1,10,20,2,AD40C29A9E13BE30:Prop Fancy Button Rusty,Once upon a time this button was fancy,100,,1
Silver Fancy Button,ALL,MEDIUM,2,10,350,15,45C9D50B12E5A362:Prop Fancy Button Silver,It looks old and fancy,100,,2
Gold Fancy Button with Emerald,ALL,MEDIUM,3,10,1900,100,33A1BB4C3C96529C:Prop Fancy Gold Button,It's a very expensive looking button,10,,3
Gold Fancy Button,ALL,MEDIUM,2,10,900,20,A42818E8F54EFFAA:Prop Fancy Gold Button Empty,It looks like it once had a stone in the center,45,,2
Iron Nut,ALL,LARGE,1,10,20,0,BCF0DE2EAC651C45:Prop Iron Nut,,25,,1
Rusty Iron Nut,ALL,LARGE,1,10,12,0,913F469E5B2F8872:Prop Rusted Iron Nut,"Aww, nuts",25,,1
Steel Nut,ALL,LARGE,1,10,25,0,3BA4B52E45C9545B:Prop Steel Nut,Even a blind squirrel...,25,,1
Iron Wing Nut,ALL,MEDIUM,1,10,18,0,7B031E536AF94BED:Prop Slightly Rusted Wing Nut,It might still be usable!,45,,1
Steel Wing Nut,ALL,MEDIUM,1,10,28,0,526471B0B5537204:Prop Steel Wing Nut,It might still be usable!,45,,1
Rusty Wing Nut,ALL,MEDIUM,1,10,13,0,6E280D786AEB7DF5:Prop Rusted Wing Nut,,65,,1
Rusty Bent Staple,ALL,SMALL,1,10,1,0,0A15E0A06EAAF65A:Prop Rusty Bent Staple,How disappointing...,75,,1
Rusty Staple,ALL,SMALL,1,10,2,0,C85E60E842085A62:Prop Rusty Staple,At least it's not bent,55,,1
Staple,ALL,SMALL,1,10,4,0,039CF37F5A86EE71:Prop Staple,That was easy,55,,1
Rusty Pipe,ALL,LARGE,1,10,32,0,0CDF44CB23DCD7BA:Prop Rusty Pipe,"Wait, does someone smell gas?",35,,1
Steel Pipe,ALL,LARGE,1,10,65,0,65B145E30133AB1C:Prop Steel Pipe,"Wait, does someone smell gas?",35,,1
Oil Lantern,CASTLE,MEDIUM,2,10,350,5,4739671F4D639FB4:Prop Oil Lantern,,120,,2
Rusty Pocketwatch Clock,FARM,MEDIUM,1,10,120,30,A9B074BFEC3BB8AB:Prop Rusty Pocketwatch,Right twice a day,50,,1
Rusty Long Nail,ALL,SMALL,1,10,6,0,22393EFA7ABCD0E0:Prop Rusty Simple Nail,Maybe this came from your fence,100,,1
Long Steel Nail,ALL,SMALL,1,10,18,0,9AABC3D5363F9EBD:Prop Steel Simple Nail,Roughly 9 inches,100,,1
Large Steel Washer,ALL,MEDIUM,1,10,25,0,1E4BD83E808F9B35:Prop Steel Washer Large,A bit dirty for a washer,65,,1
Medium Steel Washer,ALL,MEDIUM,1,10,15,0,E162FA4A0032119F:Prop Steel Washer Medium,A bit dirty for a washer,65,,1
Small Steel Washer,FARM,SMALL,1,10,12,0,8FAC7357C079A9F1:Prop Steel Washer Small,A bit dirty for a washer,65,,1
Gold Ring with Ruby,LAKE,SMALL,4,10,14000,250,99686F8216EB59C2:Prop Precious Gold Ruby Ring,,15,,4
Platinum Ring with Sapphire,FARM,SMALL,2,10,4500,350,B16617FC5A297398:Prop Precious Platinum Sapphire Ring,,12,,3
Rusty Foosball Figure,FARM,MEDIUM,1,10,40,0,586E35ACF830901A:Prop Rusty Foosball Man,No spinning,100,,1
Old Square Nail,CASTLE,SMALL,1,10,15,1,82CCF8C417565F9E:Prop Rusty Square Nail,,300,,1
Silver Button,MANSION,SMALL,1,10,110,0,BEF052EF71C3CD85:Prop Simple Silver Button,,100,,2
Brass Button,MANSION,SMALL,1,10,55,0,D7C59D5C99FF8A30:Prop Simple Brass Button,,100,,1
Samophlange,FARM,SMALL,1,10,25,0,3DF5D198DFC94C60:Prop Steel Doodad,Not a footrest,100,,1
Lead Pencil,FARM,MEDIUM,1,10,35,0,081468C2FFD45D1B:Prop Lead Pencil,It looks like someone named Aggripina made this...,25,,1
Small Lead Pencil,FARM,SMALL,1,10,8,0,39B7657E8BEFC244:Prop Lead Pencil Small,It looks like someone named Aggripina made this...,45,,1
Lead Pencil Topper,FARM,SMALL,1,10,4,0,A321227B009AA281:Prop Lead Pencil Topper,At least the eraser might work...,100,,1
Rusty Mantisafe Lock,ALL,MEDIUM,1,10,45,0,443F3C41870783CF:Prop Mantisafe Lock Rusty,,50,,1
Mantisafe Lock,ALL,MEDIUM,2,10,280,0,05505BC6279F995C:Prop Mantisafe Lock New,,75,,2
Smashed Energy Drink,FARM,LARGE,1,10,9,0,EFE7A4268AD06D01:Prop Energy Drink Smahed,Bazinga!,100,,1
Energy Drink,FARM,MEDIUM,1,10,18,0,D90D368B6D19D832:Prop Energy Drink,It's got what crops crave,100,,1
Silver Ankh,CASTLE,SMALL,3,10,900,40,B1976811145DD862:Prop Silver Ankh,,35,,3
Ancient Viking Helmet,CASTLE,LARGE,3,10,1400,4000,B91B5806BB06203D:Prop Ancient Viking Helmet,,35,,3
Platinum Wedding Band,ALL,SMALL,3,10,2800,100,B673FB95A58E8779:Prop Platinum Wedding Band,It's pure platinum!,15,,3
Platinum Ring with Emerald,ALL,SMALL,3,10,3800,300,2B6ED21910DEC499:Prop Precious Platinum Emerald Ring,,12,,3
Tent Stake,LAKE,MEDIUM,1,10,15,0,314D31AD4469BB8E:Prop Tent Stake,,100,,1
Rusty Tent Stake,LAKE,MEDIUM,1,10,3,0,9E491A9A2CA47399:Prop Rusty Tent Stake,,100,,1
Tungsten Wedding Band,FARM,SMALL,2,10,190,400,641D8168C383A3AC:Prop Tungsten Wedding Band,,100,,2
Mysterious Triangles,ALL,LARGE,4,10,33333,33333,102A312D897282F9:Prop Mysterious Golden Relic,Sierpinski would approve.,6,,4
Cannonball,CASTLE,LARGE,2,10,400,50,F8C51357709A2D4F:Prop Iron Cannonball,I'll be your whatever you want,65,,2
Jewelry Box,MANSION,MEDIUM,2,10,600,150,2CBAE3058D23224F:Prop Old Jewelry Box,,25,,2
Lead Bullet,ALL,SMALL,1,10,70,15,EF5179EC02AA9BE9:Prop Old Lead Bullet,,65,,1
Lead Musketball,CASTLE,SMALL,1,10,45,40,655B4F988752CAB8:Prop Lead Musketball,,100,,1
Antique Shotgun,MANSION,LARGE,2,10,850,90,9AD34823C2EE0D2A:Prop Complete Antique Shotgun,,30,,2
Broken Shotgun Handle,MANSION,MEDIUM,1,10,120,25,294F016C9C5CBF8E:Prop Antique Shotgun Handle,,55,,1
Broken Shotgun Trigger,MANSION,MEDIUM,1,10,180,30,993C7A820EF9BBB7:Prop Antique Shotgun Trigger,,55,,1
Broken Shotgun Barrel,MANSION,MEDIUM,1,10,145,25,315F75949F0D65DF:Prop Antique Shotgun Barrel,,55,,1
Silver Tree Coin,FARM,SMALL,2,10,260,100,81751F2F78DC5398:Prop Silver Tree Token,,65,,2
Silver Castle Coin,CASTLE,SMALL,2,10,320,100,6768A54E822903AC:Prop Silver Castle Token,"A token commemorating Castles, everywhere!",65,,2
Iron Axe Head,MANSION,MEDIUM,1,10,55,5,C2255377EABAD4E8:Prop Iron Axe Head,,125,,2
Rusty Hatchet,FARM,MEDIUM,1,10,25,10,C1FE103EE79C473D:Prop Ancient Rusted Hatchet,I guess we un-buried the hatchet!,100,,1
Manticore Legends Token,CASTLE,SMALL,3,10,2000,1000,0601CBD404152941:Prop Silver Manticore Legends Token,,15,,3
Mysterious Key,CASTLE,SMALL,3,10,1500,400,7CBB09375762B1B2:Prop Alice Madness Key 1,,22,,3
Glowing Skeleton Key,MANSION,SMALL,4,10,9999,3000,E9DB9B4BB4D41FF8:Prop Golden Skeleton Key,"It radiates and, wait, did it wink at me?",12,,4
Old Pitchfork Head,FARM,LARGE,1,10,110,10,5D5A8C54DDD9513E:Prop Iron Pitchfork Head,,100,,1
Iron Stirrup,CASTLE,LARGE,1,10,250,3,711E1481BFA2133B:Prop Iron Stirrup,,100,,1
Silver Ring with Onyx,ALL,SMALL,3,10,900,40,087DE26D3CE4D61F:Prop Silver Onyx Ring,,12,,3
Basic Lighter,ALL,MEDIUM,1,10,55,5,0ED1A5122B188B66:Prop Basic Lighter,"Amazing, it still works!",100,,1
Snazzy Blue Lighter,ALL,MEDIUM,2,10,370,5,34CDB5C762B8CD49:Prop Blue Lighter,"Amazing, it still works!",75,,2
Golden Manticore Lighter,ALL,MEDIUM,3,10,1600,25,85E6C0DED384B7E6:Prop Manticore Gold Lighter,"Amazing, it still works!",25,,3
Toy Tank,MANSION,MEDIUM,2,10,300,3,1E0A5D84080D3CD2:Prop Toy Tank,,65,,2
Pull Tab,ALL,SMALL,1,10,2,0,8F4CF43BE3576443:Prop Pull Tab,The bane of metal detectorists,400,,1
Nifty Gold Ring,LOWERLAKE,SMALL,4,10,111111,111111,4A73E5194E165EAE:Prop The One Ring,It feels powerful...,5,,4
Heart Shaped Box,MANSION,MEDIUM,3,10,550,25,50D2A5F9F1A85346:Prop Heart Shaped Box,Something has been locked in here for weeks,55,,3
Iron Screw,ALL,MEDIUM,1,10,10,0,2EB5ED45F673F0FC:Prop Iron Screw,,100,,1
Fishing Pole Reel,LOWERLAKE,MEDIUM,1,10,80,15,3A639D30DD73589A:Prop Fishing Pole Reel,Fishing? Way out here?,100,,1
Lead Sinker 2,LOWERLAKE,SMALL,1,10,25,0,117C3E1F3F6D5723:Prop Lead Fishing Sinker 2,,100,,1
Lead Sinker 1,LAKE,MEDIUM,1,10,15,0,56BE6584E85DD25F:Prop Lead Fishing Sinker 1,,100,,1
Lost Pet Tag - Antilles,ALL,SMALL,1,10,80,25,83B86C992D897819:Prop Dog Tag Heart Antilles,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Athena,ALL,SMALL,1,10,80,25,D1464D1CF5DA5F6A:Prop Dog Tag Heart Athena,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Benson,ALL,SMALL,1,10,80,25,F7FE81CC5EFD3BA6:Prop Dog Tag Heart Benson,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Bermuda,ALL,SMALL,1,10,80,25,3A199712E1AA9305:Prop Dog Tag Heart Bermuda,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Bowie,ALL,SMALL,1,10,80,25,3A199712E1AA9305:Prop Dog Tag Heart Bermuda,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Captain,ALL,SMALL,1,10,80,25,29A23A492B98C1FB:Prop Dog Tag Heart Captain,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Clio,ALL,SMALL,1,10,80,25,2D0FA57E4F4EC411:Prop Dog Tag Heart Clio,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Edison,ALL,SMALL,1,10,80,25,F657A0043E1EC2B0:Prop Dog Tag Heart Edison,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Gloves,ALL,SMALL,1,10,80,25,9B977E5F1D7BEA0B:Prop Dog Tag Heart Gloves,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Gustav,ALL,SMALL,1,10,80,25,2CAB77A9BD3A7E7E:Prop Dog Tag Heart Gustav,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Headbutt,ALL,SMALL,1,10,80,25,CF919608A2474FEC:Prop Dog Tag Heart Headbutt,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Hobbes,ALL,SMALL,1,10,80,25,3323E6047C2EE209:Prop Dog Tag Heart Hobbes,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Kitara,ALL,SMALL,1,10,80,25,E6F1BCEFB384F8A0:Prop Dog Tag Heart Kitara,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Kong,ALL,SMALL,1,10,80,25,3629AC92216C37F7:Prop Dog Tag Heart Kong,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Kuni,ALL,SMALL,1,10,80,25,622A3CF5ED594C53:Prop Dog Tag Heart Kuni,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Kyo,ALL,SMALL,1,10,80,25,62CC49AA45B813C0:Prop Dog Tag Heart Kyo,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Lettie,ALL,SMALL,1,10,80,25,D779EFCB216BAD47:Prop Dog Tag Heart Lettie,Looks like someone lost their tag...,3,,1
Lost Pet Tag - LittleBun,ALL,SMALL,1,10,80,25,CE2695A232CFF7B6:Prop Dog Tag Heart LittleBun,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Luna,ALL,SMALL,1,10,80,25,8135330370007748:Prop Dog Tag Heart Luna,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Marshmallow,ALL,SMALL,1,10,80,25,1FDDE077F6A4DDCC:Prop Dog Tag Heart Marshmallow,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Mochiko,ALL,SMALL,1,10,80,25,E88B068B6D296324:Prop Dog Tag Heart Mochiko,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Mullberry,ALL,SMALL,1,10,80,25,8FBBDAA59EECA4EA:Prop Dog Tag Heart Mullberry,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Naia,ALL,SMALL,1,10,80,25,EDFF95D1A2479A43:Prop Dog Tag Heart Naia,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Odysseus,ALL,SMALL,1,10,80,25,5FBA6DD823E2889C:Prop Dog Tag Heart Odysseus,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Othello,ALL,SMALL,1,10,80,25,D85F2E7D776210D1:Prop Dog Tag Heart Othello,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Pancake,ALL,SMALL,1,10,80,25,9772F93A60F9DAA0:Prop Dog Tag Heart Pancake,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Pele,ALL,SMALL,1,10,80,25,187055A6B811FAC6:Prop Dog Tag Heart Pele,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Amelia,ALL,SMALL,1,10,80,25,61DB523962D132B4:Prop Dog Tag Heart Princess Amelia,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Sabie,ALL,SMALL,1,10,80,25,6EEC4B1302021B73:Prop Dog Tag Heart Sabie,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Sgt Peppers,ALL,SMALL,1,10,80,25,FE0E65CA8396EBB7:Prop Dog Tag Heart Sgt Peppers,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Taika,ALL,SMALL,1,10,80,25,12D6D881533FEB8D:Prop Dog Tag Heart Taika,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Xander,ALL,SMALL,1,10,80,25,68B7ABE654FCA5A8:Prop Dog Tag Heart Xander,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Washington,ALL,SMALL,1,10,80,25,8CE14A688FB9FA2F:Prop Dog Tag Bone,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Aelin,ALL,SMALL,1,10,80,25,A288FA316B05B4CB:Prop Dog Tag Bone Aelin,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Annabel,ALL,SMALL,1,10,80,25,8800E6D67DB42BF6:Prop Dog Tag Bone Annabel,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Betsy,ALL,SMALL,1,10,80,25,9BAA80950EF85AB6:Prop Dog Tag Bone Betsy,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Boba,ALL,SMALL,1,10,80,25,424A4D6C0D5B3CE3:Prop Dog Tag Bone Boba,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Bowie,ALL,SMALL,1,10,80,25,9C94E3198A043378:Prop Dog Tag Bone Bowie,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Chance,ALL,SMALL,1,10,80,25,7674CE326CFF5CC4:Prop Dog Tag Bone Chance,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Charlie,ALL,SMALL,1,10,80,25,4A1E9E4D2D8683D0:Prop Dog Tag Bone Charlie,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Conan,ALL,SMALL,1,10,80,25,72DB17BA7EC07445:Prop Dog Tag Bone Conan,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Cricket,ALL,SMALL,1,10,80,25,5E4268431BA9D586:Prop Dog Tag Bone Cricket,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Fred,ALL,SMALL,1,10,80,25,E063FAD454063C25:Prop Dog Tag Bone Fred,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Gucci,ALL,SMALL,1,10,80,25,DB327B497CF48398:Prop Dog Tag Bone Gucci,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Harley,ALL,SMALL,1,10,80,25,F91F76FBDCB29016:Prop Dog Tag Bone Harley,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Kratos,ALL,SMALL,1,10,80,25,E02F644B38F2FF25:Prop Dog Tag Bone Kratos,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Little Bear,ALL,SMALL,1,10,80,25,11A387C67AD7EC22:Prop Dog Tag Bone Little Bear,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Lulu,ALL,SMALL,1,10,80,25,ACF3CF0D2E1D017A:Prop Dog Tag Bone Lulu,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Mika,ALL,SMALL,1,10,80,25,20B9F729FFD37082:Prop Dog Tag Bone Mika,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Monty,ALL,SMALL,1,10,80,25,E28E072D9AB63694:Prop Dog Tag Bone Monty,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Morris,ALL,SMALL,1,10,80,25,6B20855B700B2AB9:Prop Dog Tag Bone Morris,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Nutmeg,ALL,SMALL,1,10,80,25,6C8307D05BBDBC28:Prop Dog Tag Bone Nutmeg,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Petunia,ALL,SMALL,1,10,80,25,37FCBF3E7DCEFC05:Prop Dog Tag Bone Petunia,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Pretzel,ALL,SMALL,1,10,80,25,EF3F94DA5FD66C22:Prop Dog Tag Bone Pretzel,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Samson,ALL,SMALL,1,10,80,25,32B5714F68D556BA:Prop Dog Tag Bone Samson,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Sigmund,ALL,SMALL,1,10,80,25,13B1D03C6C8493F6:Prop Dog Tag Bone Sigmund,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Temmie,ALL,SMALL,1,10,80,25,9AA032AC7BAD4EB1:Prop Dog Tag Bone Temmie,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Tiger,ALL,SMALL,1,10,80,25,19B2DB8BD08A44AA:Prop Dog Tag Bone Tiger,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Tique,ALL,SMALL,1,10,80,25,E63A1A9E4B3E0871:Prop Dog Tag Bone Tique,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Winston,ALL,SMALL,1,10,80,25,F4988C8DDC902E61:Prop Dog Tag Bone Winston,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Zipper,ALL,SMALL,1,10,80,25,C7DCC08C56159868:Prop Dog Tag Bone Zipper,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Trevor,ALL,SMALL,1,10,80,25,B9FB40F9760E2269:Prop Dog Tag Heart Trevor,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Cocoa,ALL,SMALL,1,10,80,25,348A3E1433014029:Prop Dog Tag Heart Cocoa,Looks like someone lost their tag...,3,,1
Lost Pet Tag - Cinnamon,ALL,SMALL,1,10,80,25,BEE8A9284860B11B:Prop Dog Tag Heart Cinnamon,Looks like someone lost their tag...,3,,1
Golden Raptor Figurine,RAPTORCAVE,SMALL,3,10,4600,500,F76993827C490784:Prop Golden Raptor Figurine,,12,,3
Crystal Raptor Figurine,RAPTORCAVE,SMALL,4,10,25000,2000,8038E1EEAFDC0A6E:Prop Crystal Raptor Figurine,,10,,4
Silver Raptor Figurine,RAPTORCAVE,SMALL,2,10,350,100,5571B7988BCE15F2:Prop Silver Raptor Figurine,,21,,2
New Fishing Lure,LOWERLAKE,SMALL,1,10,60,5,B0ECA716F9A02301:Prop Steel Fishing Hook,Perhaps dropped by a traveler that sings the blues,75,,1
Rusty Fishing Lure,LAKE,SMALL,1,10,25,5,C87DC50F2027E664:Prop Rusty Fishing Hook,Caught many boots back in its day,75,,1
Black Button,ALL,SMALL,1,10,35,5,832C5C0C28BA60D9:Prop Basic Button Dark Gilt,,75,,1
Lucky Green Button,MANSION,SMALL,2,10,230,5,85151DC6133C8064:Prop Basic Button Lucky,,100,,2
Pink Button,ALL,SMALL,2,10,35,5,BDE0F7578A763A33:Prop Basic Button Pink,,100,,2
Brass Button,TUNNEL,SMALL,1,10,40,5,D37357C81E59A463:Prop Basic Button Shiny Brass,,100,,1
Steel Button,ALL,LARGE,1,10,22,5,B7B61044AF04D61D:Prop Basic Button Shiny Steel,,45,,1
Emerald Heart Earring,ALL,SMALL,3,10,3000,50,69E2887B7C87D922:Prop Earring Emerald Heart,,35,,3
Sapphire Heart Earring,ALL,SMALL,3,10,7000,100,270AEA9886D71A14:Prop Earring Sapphire Heart,,12,,3
Glowing Meteorite,RAPTORCAVE,MEDIUM,3,10,5000,5000,B596922EFF76C761:Prop Glowing Meteorite,,12,,3
Rusty Shield Handle,CASTLE,MEDIUM,2,10,150,250,1E08918E7AC256C6:Prop Rusty Shield Handle,,100,,2
Ancient Warrior's Shield,CASTLE,LARGE,2,10,450,200,02BF1B3907770334:Prop Cracked Old Shield,,50,,2
Ancient Sword Hilt,CASTLE,MEDIUM,2,10,380,200,AC47702848CA6F79:Prop Rusty Sword Hilt,,50,,2
Steel Bolt,RACETRACK,SMALL,1,10,25,0,FDF836C33BC509B0:Prop Steel Bolt,,100,,1
Sharp Arrowhead,RAPTORCAVE,SMALL,2,10,190,3,173E6B7D549CDC04:Prop Steel Arrowhead,,50,,2
Silver Jewelry Chain,ALL,SMALL,3,10,650,15,AC2947EBDA69F669:Prop Silver Chain,,55,,3
Tarnished Silver Chain,ALL,SMALL,2,10,120,2,46AEC2DC29905424:Prop Tarnish Silver Chain,,100,,2
Golden Jewelry Chain,LAKE,LARGE,3,10,1400,15,3814807BD8CE7066:Prop Gold Chain,,13,,3
Rusty Jewelry Chain,TUNNEL,SMALL,1,10,30,1,F4D655890503F228:Prop Rusty Chain,,100,,1
New Fish Hook,LOWERLAKE,SMALL,2,10,40,1,CAB3185529EB6FE6:Prop Single Fishhook New,,50,,2
Lost Fish Hook,LAKE,SMALL,1,10,5,2,8E2CE69E839460C1:Prop Fishook Seaweed,,100,,1
Gold Pendant,MANSION,LARGE,1,10,1300,15,31CCE66E280FEE39:Prop Gold Star Pendant,,15,,3
Steel Shuriken,RAPTORCAVE,MEDIUM,2,10,180,15,915CAD6A92BE17B9:Prop Steel Shuriken,,25,,2
Rusty Old Shuriken,ALL,MEDIUM,1,10,40,2,39FA300734662FB5:Prop Rusty Old Shuriken,,100,,1
Shiny Shuriken,RAPTORCAVE,MEDIUM,3,10,450,15,59A9AD1B88822C7F:Prop Gleaming Shuriken,,15,,3
Pendant Of The Moon,ALL,SMALL,3,10,800,15,47ECCC887628D7E3:Prop Glowing Moon Pendant,,35,,3
Diamond Engagement Ring,FARM,SMALL,4,10,18000,200,53C6DFF815C9C518:Prop Diamond Engagement Ring,,20,,4
Broken Engagement Ring,ALL,SMALL,2,10,70,5,B92CB01C453A4C45:Prop Diamond Engagement Empty,,45,,2
New Scissors,FARM,MEDIUM,2,10,120,3,7B334251819F9FAF:Prop Brand New Scissors,,65,,2
Rusty Scissors,ALL,MEDIUM,1,10,25,1,A5DB2EFBEA487ED1:Prop Rusty Scissors,,100,,1
Broken Scissor Bottom,ALL,SMALL,1,10,5,1,BC7A70D033D7F1E1:Prop Broken Scissor Blade,,45,,1
Broken Scissor Top,ALL,SMALL,1,10,5,1,311DFA4482264B08:Prop Broken Scissor Blade Top,,45,,1
Gleaming Golden Sword,CASTLE,LARGE,4,10,50000,50000,4DD817D406A634CF:Prop Epic Golden Sword,,10,,4
Golden Longbow,JUNK,MEDIUM,1,10,40000,5000,0D3B50B0296684D4:FishingProp_AncientElvenBow,,2,,4
Old Fishing Knife,JUNK,MEDIUM,1,10,50,1,C71C0600332BDA05:FishingProp_CrustyFishingKnife,,35,,1
Golden Medallion,JUNK,MEDIUM,1,10,5000,100,7664E8450717C4ED:FishingProp_GoldPendant,"In small letters it reads ""M.E.R.G.E.""",4,,3
Horrifying Scythe,JUNK,MEDIUM,1,10,25000,2500,13C2E2BD28ED7130:FishingProp_HorrifyingScythe,This item feels you will fear,1,,4
Brass Ring,JUNK,MEDIUM,1,10,130,1,9AD49077AE3DF20E:FishingProp_JunkBrassRing,,14,,2
Rusty Old Ring,JUNK,MEDIUM,1,10,50,1,8322404B99913B00:FishingProp_JunkyRing,,30,,1
Glowing Pink Seashell,JUNK,MEDIUM,1,10,3000,100,7617C0C6E7342DDD:FishingProp_MagicalSeashell,This item fills you with happiness,5,,3
Mecha Wings Pin,JUNK,MEDIUM,1,10,800,25,914E2C2300383ECB:FishingProp_MechaWings,,6,,3
Filthy Old Can,JUNK,MEDIUM,1,10,25,1,412EF6A3C6A084A7:FishingProp_OldCannister,There's something sloshing around inside...,35,,1
Slimey Dart,JUNK,MEDIUM,1,10,35,1,1EEA89AA80F2EEEE:FishingProp_OldDart,,35,,1
Long Lost Flute,JUNK,MEDIUM,1,10,80,1,606C3D9E085C7B7C:FishingProp_OldFlute,,11,,2
Rusty Hand Grenade,JUNK,MEDIUM,1,10,135,1,F132A62CD792726C:FishingProp_OldGrenade,,8,,2
Woodcutter's Axe,JUNK,MEDIUM,1,10,35,1,43949A5C95506EBB:FishingProp_OldHatchet,,42,,1
Milk Crate,JUNK,MEDIUM,1,10,15,1,1AC3AAAE7E91E2E9:FishingProp_OldMilkCrate,,50,,1
Rusty Old Pistol,JUNK,MEDIUM,1,10,80,1,AF9103360ECC659B:FishingProp_OldPistol,,35,,1
Soggy Shoe,JUNK,MEDIUM,1,10,12,1,014B61D4D43B2DB9:FishingProp_SoggyOldShoe,,35,,1
Rubber Duck,JUNK,MEDIUM,1,10,25,1,07ACD53EBEB8FCFC:FishingProp_SwimmingDuck,,12,,2
Goldfish,FISHINGALL,SMALL,1,10,5280,1,DF4B4873092F8EBE:Prop Fish Goldfish,This goldfish doesn't have gold...,15,,4
Black Sea Bass,FISHINGALL,LARGE,1,10,600,1,B62AC8CDFB19C81F:Prop Fish Black Sea Bass,Turn on some bass please!,50,,2
Sea Bass,FISHINGALL,MEDIUM,1,10,80,1,9FCCB7B79526FBCB:Prop Fish Sea Bass,Do you see this bass?,60,,1
Mackerel,FISHINGALL,SMALL,1,10,16,1,5CA86F00C25EE537:Prop Fish Mackerel,"Holy mackerel, I caught it!",70,,1
Tuna,FISHINGALL,LARGE,1,10,2540,1,DD7185BA29E767DF:Prop Fish Tuna,Uncanned tuna! It has a nice gardient!,16,,3
Apache Trout,FISHINGALL,MEDIUM,1,10,780,1,2C1B0312A84C7D84:Prop Fish Apache Trout,,40,,2
Golden Trout,FISHINGALL,MEDIUM,1,10,2100,1,869C4ADB9B7CB5E8:Prop Fish Golden Trout,"It looks golden, but it's not gold!",22,,3
Anchovy,FISHINGALL,SMALL,1,10,10,1,94E2255A9C8D82D4:Prop Fish Anchovy,,70,,1
King Salmon,FISHINGALL,LARGE,1,10,1560,1,9A232BFC8DCF9748:Prop Fish King Salmon,All hail the king of the fish!,25,,2
Rainbow Trout,FISHINGALL,MEDIUM,1,10,2220,1,80540F0B317DD5E1:Prop Fish Rainbow Trout,,22,,3
Carp,FISHINGALL,MEDIUM,1,10,140,1,D494DF1088C23665:Prop Fish Carp,This carp is pretty sharp!,45,,1
Jewel Cichlid,FISHINGALL,SMALL,1,10,800,1,C1F098F9BF9C0675:Prop Fish Jewel Cichlid,No jewelry can be found here...,40,,2
Knifejaw,FISHINGMIDDLELAKE,MEDIUM,1,10,2645,1,7DB374AECC3E748C:Prop Fish Knifejaw,A zebra looking fish...,16,,3
Koi,FISHINGALL,MEDIUM,1,10,12600,1,7854854A7B710AB9:Prop Fish Koi,What a beautiful kolor!,12,,4
Great White Shark,FISHINGUPPERLAKE,LARGE,1,10,3080,1,39D674DB628B9FE6:Prop Fish Great White Shark,"Argh, scary fish with jaws!",12,,3
Mahi Mahi,FISHINGALL,LARGE,1,10,15000,1,97D3BF7D6D1FE944:Prop Fish Mahi Mahi,Need more money money!,11,,4
Anglerfish,FISHINGALL,MEDIUM,1,10,4400,1,F150FA33EE36BDA2:Prop Fish Anglerfish,This fish can brighten the room!,12,,3
Discus,FISHINGALL,SMALL,1,10,2860,1,4A82E2DC3B1A7E89:Prop Fish Discus Fish,Let's have a discussion!,14,,3
Betta Fish,FISHINGALL,SMALL,1,10,2409,1,F4200577500D7D9E:Prop Fish Betta Pink-White,A fish with a tail of a skirt!,20,,3
Black Marlin,FISHINGLOWERLAKE,LARGE,1,10,1900,1,22AF0F83346E2577:Prop Fish Black Marlin,"Such a long nose, Marlin!",20,,2
Killifish,FISHINGALL,SMALL,1,10,60,1,C780314D5CC1C024:Prop Fish Killifish,Killer fish?,65,,1
Catfish,FISHINGALL,LARGE,1,10,120,1,6AB97846DF3E1DAF:Prop Fish Catfish,Can you meow?,65,,1
Swordtail,FISHINGALL,SMALL,1,10,1100,1,1B946774AE715C5A:Prop Fish Swordtail,"I have a sword now, I can battle!",45,,2
Silver Arowana,FISHINGALL,SMALL,1,10,200,1,989A301CDB69C6BD:Prop Fish Silver Arowana,It's silver and pretty!,45,,1
White Bass,FISHINGALL,MEDIUM,1,10,300,1,577B93513AAD3AC2:Prop Fish White Bass,Turn on some bass please!,40,,1
Rainbowfish,FISHINGALL,SMALL,1,10,1360,1,4F88874200D8CDEE:Prop Fish Rainbowfish,Fish with different colors!,20,,2
Tancho Koi,FISHINGMIDDLELAKE,MEDIUM,1,10,10750,1,0D54ECD918422525:Prop Fish Tancho Koi,A fish with red path on the head!,15,,4
Texas Cichlid,FISHINGALL,SMALL,1,10,180,1,2AB4D53CA13CD9BF:Prop Fish Texas Cichlid,I wonder if it came from Texas?,50,,1
Blue Betta Fish,FISHINGALL,SMALL,1,10,1420,1,F7464A2287C32A25:Prop Fish Betta Blue,"A fish with a tail of a skirt, but blue!",30,,2
Blue Marlin,FISHINGUPPERLAKE,LARGE,1,10,2980,1,F4E0F001A315C60A:Prop Fish Blue Marlin,I wonder if he has a brother?,14,,3
Angel Fish,FISHINGALL,SMALL,1,10,74,1,68CEBF06C7B8CDDF:Prop Fish Angel Fish,I caught a small Angel!,55,,1
Nibble Fish,FISHINGALL,SMALL,1,10,12,1,8CF8E72B3CB8EC4E:Prop Fish Nibble Fish,,70,,1
Corydoras Catfish,FISHINGALL,LARGE,1,10,100,1,A94C4EC07F1AFDE7:Prop Fish Corydoras Catfish,A tiny catfish? Nice!,65,,1
Bluegill,FISHINGALL,MEDIUM,1,10,970,1,420CD1719D3604EF:Prop Fish Bluegill,,45,,2
]]

-- current fields
-- playerFacingName,area,size,minDepth,maxDepth,sellValue,fame,assetRef,itemDesc,dropWeight,digMod,itemRarity

local fieldProperties = {}
table.insert(fieldProperties, { name = "playerFacingName", type = "string" })
table.insert(fieldProperties, { name = "area", type = "string" })
table.insert(fieldProperties, { name = "size", type = "size" })
table.insert(fieldProperties, { name = "minDepth", type = "number" })
table.insert(fieldProperties, { name = "maxDepth", type = "number" })
table.insert(fieldProperties, { name = "sellValue", type = "number" })
table.insert(fieldProperties, { name = "fame", type = "number" })
table.insert(fieldProperties, { name = "assetRef", type = "string" })
table.insert(fieldProperties, { name = "itemDesc", type = "string" })
table.insert(fieldProperties, { name = "dropWeight", type = "number" })
table.insert(fieldProperties, { name = "digMod", type = "number" })
table.insert(fieldProperties, { name = "itemRarity", type = "number" })

function ProcessField(outFields, fieldPropertyTable, fieldStringValue)
--print("process " .. fieldPropertyTable.name .. " -> " .. fieldStringValue)
	if fieldPropertyTable.type == "string" then
		outFields[fieldPropertyTable.name] = fieldStringValue
	elseif fieldPropertyTable.type == "size" then
		-- represented as string in spreadsheet, needs to be int in Lua
		if fieldStringValue == "SMALL" then
			outFields[fieldPropertyTable.name] = SIZE_SMALL
		elseif fieldStringValue == "MEDIUM" then
			outFields[fieldPropertyTable.name] = SIZE_MEDIUM
		elseif fieldStringValue == "LARGE" then
			outFields[fieldPropertyTable.name] = SIZE_LARGE
		end
	elseif fieldPropertyTable.type == "number" then
		outFields[fieldPropertyTable.name] = tonumber(fieldStringValue)
	end
end

-- Convert from CSV string to table (converts a single line of a CSV file)
-- taken from http://lua-users.org/wiki/CsvUtils
function fromCSV (s)
  s = s .. ','        -- ending comma
  local t = {}        -- table to collect fields
  local fieldstart = 1
  repeat
    -- next field is quoted? (start with `"'?)
    if string.find(s, '^"', fieldstart) then
      local a, c
      local i  = fieldstart
      repeat
        -- find closing quote
        a, i, c = string.find(s, '"("?)', i+1)
      until c ~= '"'    -- quote not followed by quote?
      if not i then error('unmatched "') end
      local f = string.sub(s, fieldstart+1, i-1)
      table.insert(t, (string.gsub(f, '""', '"')))
      fieldstart = string.find(s, ',', i) + 1
    else                -- unquoted; find next comma
      local nexti = string.find(s, ',', fieldstart)
      table.insert(t, string.sub(s, fieldstart, nexti-1))
      fieldstart = nexti + 1
    end
  until fieldstart > string.len(s)
  return t
end

function ProcessLine(line)
	local fields = {}
	local fieldIndex = 1
	
	local fieldArray = fromCSV(line)
	
	for index, field in ipairs(fieldArray) do
		ProcessField(fields, fieldProperties[index], fieldArray[index])
	end
	
	return fields
end

local items = OrderedTable.new()

function ValidateItem(itemProps)
	if items[itemProps.id] ~= nil then
		error("Duplicate item id " .. itemProps.id)
	end
	if itemProps.playerFacingName == nil or itemProps.playerFacingName == "" then
		error("Missing player facing name for item " .. itemProps.id)
	end
	if areaIds[itemProps.area] == nil then
		error("Invalid area for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if sizes[itemProps.size] == nil then
		error("Invalid size for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.minDepth < 1 then
		error("Invalid minDepth for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.maxDepth > 10 then
		error("Invalid maxDepth for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.minDepth > itemProps.maxDepth then
		error("Invalid min/maxDepth for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.sellValue == nil or itemProps.sellValue < 0 then
		error("Invalid sellValue for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.assetRef == nil then
		error("Invalid assetRef for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if itemProps.dropWeight == nil or itemProps.dropWeight < 0 then
		error("Invalid sellValue for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
	if rarities[itemProps.itemRarity] == nil then
		error("Invalid itemRarity for item " .. itemProps.id .. " " .. itemProps.playerFacingName)
	end
end

local startlinePos = 1
local endlinePos = string.find(csv,'\n')
local itemIndex = 1
while endlinePos ~= nil do
	local line = string.sub(csv,startlinePos,endlinePos-1)
	
	local processedFields = ProcessLine(line)

	-- generate ID
	processedFields.id = "MD" .. itemIndex

	ValidateItem(processedFields)

	items[processedFields.id] = processedFields
	
	startlinePos = endlinePos + 1
	endlinePos = string.find(csv,'\n',startlinePos)
	itemIndex = itemIndex + 1
end

--[[print("verify items")
for id,item in pairs(items) do
	print("Item: " .. id .. " " .. item["playerFacingName"])
	for key,value in pairs(item) do
		print("  " .. tostring(key) .. " : " .. tostring(value))
	end
	
end]]--

return items