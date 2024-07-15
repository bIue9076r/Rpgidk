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
	local itemTable = Item.get()
	local items = ""
	local noteTable = Note.get()
	local notes = ""
	local d = ""
	for _,i in ipairs(itemTable) do
		items= items.."Item.new('"..i.name..
		"','"..i.icon.."',"..i.int..","..i.arg..","..tostring(i.reusable)..","..i.uses..") ; "
	end

	for _,i in ipairs(noteTable) do
		notes= notes.."Note.new('"..i.name.."',"..i.int..") ; "
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

	--Sub zones
	for _,i in ipairs(D['Capital Hall']) do
		d = d.."D['Capital Hall'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Libary']) do
		d = d.."D['Libary'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Desert Town']) do
		d = d.."D['Desert Town'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Underground Market']) do
		d = d.."D['Underground Market'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Sea Dock']) do
		d = d.."D['Sea Dock'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Desert Temple']) do
		d = d.."D['Desert Temple'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Desert Mine']) do
		d = d.."D['Desert Mine'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Big Green Lake']) do
		d = d.."D['Big Green Lake'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Ice Cave']) do
		d = d.."D['Ice Cave'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Igloo Town']) do
		d = d.."D['Igloo Town'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Reactor']) do
		d = d.."D['Reactor'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Destroyed Town']) do
		d = d.."D['Destroyed Town'][".._.."].Hp="..i.Hp.."; "
	end
	for _,i in ipairs(D['Criminal Base']) do
		d = d.."D['Criminal Base'][".._.."].Hp="..i.Hp.."; "
	end
	
	-- Player Stats 
	local save1 = "loaded="..tostring(loaded)..";"..
	"D.SetLoc('"..(D.location).."');"..
	"Rep="..(Rep)..";"..
	"Hp="..(Hp)..";"..
	"Max_Hp="..(Max_Hp)..";"..
	"Infected="..tostring(Infected)..";"..
	"Atk="..(Atk)..";"..
	"Def="..(Def)..";"..
	"Cash="..(Cash)..";"..
	"Lck="..(Lck)..";\n"
	
	-- Player Items
	local save2 = "item={};sitem={};"..
	"sitem[0]={[0]="..(sitem[0][0])..",[1]="..(sitem[0][1])..",[2]="..
	(sitem[0][2])..",[3]="..(sitem[0][3]).."};"..
	"sitem[1]={[0]="..(sitem[1][0])..",[1]="..(sitem[1][1])..",[2]="..
	(sitem[1][2])..",[3]="..(sitem[1][3]).."};"..
	"sitem[2]={[0]="..(sitem[2][0])..",[1]="..(sitem[2][1])..",[2]="..
	(sitem[2][2])..",[3]="..(sitem[2][3]).."};"..
	"sitem[3]={[0]="..(sitem[3][0])..",[1]="..(sitem[3][1])..",[2]="..
	(sitem[3][2])..",[3]="..(sitem[3][3]).."};"..
	"sitem[4]={[0]="..(sitem[4][0])..",[1]="..(sitem[4][1])..",[2]="..
	(sitem[4][2])..",[3]="..(sitem[4][3]).."};"..
	"r_store_stock_med={[0]="..r_store_stock_med[0]..
	",[1]="..r_store_stock_med[1]..
	",[2]="..r_store_stock_med[2]..
	",[3]="..r_store_stock_med[3].."};"..
	"r_store_stock_Posion={[0]="..r_store_stock_Posion[0]..
	",[1]="..r_store_stock_Posion[1]..
	",[2]="..r_store_stock_Posion[2]..
	",[3]="..r_store_stock_Posion[3].."};"..
	"r_store_stock_Atk={[0]="..r_store_stock_Atk[0]..
	",[1]="..r_store_stock_Atk[1]..
	",[2]="..r_store_stock_Atk[2]..
	",[3]="..r_store_stock_Atk[3].."};"..
	"r_store_stock_Def={[0]="..r_store_stock_Def[0]..
	",[1]="..r_store_stock_Def[1]..
	",[2]="..r_store_stock_Def[2]..
	",[3]="..r_store_stock_Def[3].."};"..
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
	"Arrests="..(Arrests)..";"..
	"name='"..(name).."';"..
	"debugmode="..tostring(debugmode)..";"..
	"snitch="..tostring(snitch)..";"..
	"Quest.set('ashley',"..Quest.Return('ashley')..");"..
	"Ashley_Hp="..(Ashley_Hp)..";"..
	"Sally_Hp="..(Sally_Hp)..";"..
	"George_Hp="..(George_Hp)..";"..
	"Willson_Hp="..(Willson_Hp)..";"..
	"Penelope_Hp="..(Penelope_Hp)..";"..
	"shopimg='"..(shopimg).."';\n"
	
	local save5 = "yellowSnowEater="..tostring(yellowSnowEater)..";"..
	"iceBaseFound="..tostring(iceBaseFound)..";"..
	"helpedResearcher="..tostring(helpedResearcher)..";"..
	"Traitor="..tostring(Traitor == true or false)..";"..
	"Valary="..tostring(Valary == true or false)..";"..
	"dch1_kill="..tostring(dch1_kill == true or false)..";"
	
	local save6 = "Exp.HardOverride("..
	Exp.exportCount()..","..Exp.exportLevel()..");"..
	items..
	notes..
	d..
	"\nreturn 0;\n"
	
	love.filesystem.createDirectory("/Save/")
	love.filesystem.write("/Save/.SaveFile",save1..
		save2..
		save3..
		save4..
		save5..
		save6)
	--end)
end