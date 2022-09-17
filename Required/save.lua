--[[

loaded=false
Rep=0
Hp=100
Max_Hp=100
Infected=false
Atk=0
Def=0
Cash=0
Lck=1

item={}
store_stock_med=math.random(1,100)
store_stock_Posion=math.random(1,100)
store_stock_Atk=math.random(1,100)
store_stock_Def=math.random(1,100)
restock = 1000

name=""
debugmode=false
snitch=false
TimeSinceLastCrime = 0
Kills = 0

--Dialoge variables
yellowSnowEater = false
iceBaseFound = false
helpedResearcher = false

]]
function save()
	--pcall(function()
	local itemTable = Item:get()
	local items = ""
	local noteTable = Note:get()
	local notes = ""
	local d = ""
	for _,i in ipairs(itemTable) do
		items= items.."Item:new('"..i.name..
		"','"..i.icon.."',"..i.int..","..i.arg..") ; "
	end
	for _,i in ipairs(noteTable) do
		notes= notes.."Note:new('"..i.name.."',"..i.int..") ; "
	end
	for _,i in ipairs(D.city) do
		d = d.."D.city[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desert) do
		d = d.."D.desert[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.icespikes) do
		d = d.."D.icespikes[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.swamp) do
		d = d.."D.swamp[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.wasteland) do
		d = d.."D.wasteland[".._.."].Hp="..i.Hp.."; "
	end
	--Sub
	for _,i in ipairs(D.capitalHall) do
		d = d.."D.capitalHall[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.libary) do
		d = d.."D.libary[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertTown) do
		d = d.."D.desertTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.undergroundMarket) do
		d = d.."D.undergroundMarket[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.seaDock) do
		d = d.."D.seaDock[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertTemple) do
		d = d.."D.desertTemple[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.desertMine) do
		d = d.."D.desertMine[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.bigGreenLake) do
		d = d.."D.bigGreenLake[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.iceCave) do
		d = d.."D.iceCave[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.iglooTown) do
		d = d.."D.iglooTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.reactor) do
		d = d.."D.reactor[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.destroyedTown) do
		d = d.."D.destroyedTown[".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D.criminalBase) do
		d = d.."D.criminalBase[".._.."].Hp="..i.Hp.."; "
	end
	
	-- Player Stats 
	local save1 = "loaded="..tostring(loaded)..";"..
	"D.SetLoc("..(D.location)..");"..
	"Rep="..(Rep)..";"..
	"Hp="..(Hp)..";"..
	"Max_Hp="..(Max_Hp)..";"..
	"Infected="..tostring(Infected)..";"..
	"Atk="..(Atk)..";"..
	"Def="..(Def)..";"..
	"Cash="..(Cash)..";"..
	"Lck="..(Lck)..";\n"
	
	-- Player Items
	local save2 = "item={};"..
	"item[0]="..(item[0])..";"..
	"item[1]="..(item[1])..";"..
	"item[2]="..(item[2])..";"..
	"item[3]="..(item[3])..";"..
	"store_stock_med="..(store_stock_med)..";"..
	"store_stock_Posion="..(store_stock_Posion)..";"..
	"store_stock_Atk="..(store_stock_Atk)..";"..
	"store_stock_Def="..(store_stock_Def)..";"..
	"restock="..(restock)..";\n"
	
	
	
	-- Player Loc check
	local save3 = "__CityEntryNote="..(__CityEntryNote)..";"..
	"__DesertEntryNote="..(__DesertEntryNote)..";"..
	"__IceEntryNote="..(__IceEntryNote)..";"..
	"__SwampEntryNote="..(__SwampEntryNote)..";"..
	"__WasteEntryNote="..(__WasteEntryNote)..";"..
	"__CapitalHallEntryNote="..(__CapitalHallEntryNote)..";"..
	"__LibaryEntryNote="..(__LibaryEntryNote)..";"..
	"__UndergroundMarketEntryNote="..(__UndergroundMarketEntryNote)..";"..
	"__DesertTownEntryNote="..(__DesertTownEntryNote)..";"..
	"__DesertMineEntryNote="..(__DesertMineEntryNote)..";"..
	"__DesertTempleEntryNote="..(__DesertTempleEntryNote)..";"..
	"__SeaDockEntryNote="..(__SeaDockEntryNote)..";"..
	"__BigGreenLakeEntryNote="..(__BigGreenLakeEntryNote)..";"..
	"__IceCaveEntryNote="..(__IceCaveEntryNote)..";"..
	"__IglooTownEntryNote="..(__IglooTownEntryNote)..";"..
	"__ReactorEntryNote="..(__ReactorEntryNote)..";"..
	"__DestroyedTownEntryNote="..(__DestroyedTownEntryNote)..";"..
	"__CriminalBaseEntryNote="..(__CriminalBaseEntryNote)..";\n"
	
	local save4 = "TimeSinceLastCrime="..(TimeSinceLastCrime)..";"..
	"Kills="..(Kills)..";"..
	"name="..(name)..";"..
	"debugmode="..tostring(debugmode)..";"..
	"snitch="..tostring(snitch)..";"..
	"Quest:set('ashley',"..Quest:Return('ashley')..");"..
	"Ashley_Hp="..(Ashley_Hp)..";"..
	"Sally_Hp="..(Sally_Hp)..";"..
	"George_Hp="..(George_Hp)..";"..
	"Willson_Hp="..(Willson_Hp)..";"..
	"Penelope_Hp="..(Penelope_Hp)..";"..
	"shopimg="..(shopimg)..";\n"
	
	local save5 = "yellowSnowEater="..tostring(yellowSnowEater)..";"..
	"iceBaseFound="..tostring(iceBaseFound)..";"..
	"helpedResearcher="..tostring(helpedResearcher)..";"..
	"Exp:HardOverride("..Exp:exportCount()..","..Exp:exportLevel()..");"..
	items..
	notes..
	d..
	"\nreturn 0;\n"
	
	love.filesystem.createDirectory("/Save/")
	love.filesystem.write("/Save/.SaveFile",save1..
		save2..
		save3..
		save4..
		save5)
	--end)
end