D = {}
D.location = 'desert'

--Entry Notes Values
__CityEntryNote = 1
__DesertEntryNote = 1
__IceEntryNote = 1
__SwampEntryNote = 1
__WasteEntryNote = 1
--Sub Entry Notes Values
__CapitalHallEntryNote = 1
__LibaryEntryNote = 1
__UndergroundMarketEntryNote = 1
__DesertTownEntryNote = 1
__DesertMineEntryNote = 1
__DesertTempleEntryNote = 1
__SeaDockEntryNote = 1
__BigGreenLakeEntryNote = 1
__IceCaveEntryNote = 1
__IglooTownEntryNote = 1
__ReactorEntryNote = 1
__DestroyedTownEntryNote = 1
__CriminalBaseEntryNote = 1

--Basic Dialoge Options
-- Choice Selection:
function drawOptions(options)
	for i,v in ipairs(options) do
		love.graphics.print({{0,0,0},v},60,320+(i*20))
	end
end

--Advanced Dialoge Options
-- Dialoge Trees:
function AdvDrawOptions(options,selectNum)
	for i,v in ipairs(options) do
		love.graphics.print({{0,0,0},v},85,300+(i*20))
	end
	love.graphics.draw(image:getImage("Selected"),60,300+(selectNum*20))
end

--[[
--Guide--

function draw()
	if Rep >= 0 and dc1.inDialoge == false then
		+Rep options and Message
	elseif Rep <= 0 and dc1.inDialoge == false then
		-Rep options and Message
	end
	love.graphics.draw(image,60,140)
	love.graphics.print({{0,0,0},Name},60,260)
	love.graphics.print({{0,0,0},Message},60,280)
	love.graphics.print({{0,0,0},Message2 (optional)},60,300)
	drawOptions(optionsTable)
end

function keypressed(key)
	if [outer condition] then
		if not inDialoge then
			if key == '' then
				
			elseif key == '' then
				
			elseif key == 't' then
				inDialoge = true
			end
		else
			if key == '' then
				
			elseif key == '' then
				
			elseif key == 'l' then
				inDialoge = false
			end
		end
	else
		if not inDialoge then
			if key == '' then
				
			elseif key == '' then
				
			elseif key == 't' then
				inDialoge = true
			end
		else
			if key == '' then
				
			elseif key == '' then
				
			elseif key == 'l' then
				inDialoge = false
			end
		end
	end
end

]]--

require("/Required/Dialoge/City/CityDialoge")
require("/Required/Dialoge/City/SubZones/Capital/Capital_HallDialoge") --Capital Hall
require("/Required/Dialoge/City/SubZones/Libary/LibaryDialoge") --Libary
require("/Required/Dialoge/City/SubZones/Market/Underground_MarketDialoge") --Underground Market
require("/Required/Dialoge/Desert/DesertDialoge")
require("/Required/Dialoge/Desert/SubZones/Town/Desert_TownDialoge") --Desert Town
require("/Required/Dialoge/Desert/SubZones/Mine/Desert_MineDialoge") --Desert Mine
require("/Required/Dialoge/Desert/SubZones/Temple/Desert_TempleDialoge") --Desert Temple
require("/Required/Dialoge/Swamp/SwampDialoge")
require("/Required/Dialoge/Swamp/SubZones/Dock/Sea_DockDialoge") --Sea Dock
require("/Required/Dialoge/Swamp/SubZones/Lakes/Big_Green_LakeDialoge") --Big Green Lake
require("/Required/Dialoge/Ice/IceDialoge")
require("/Required/Dialoge/Ice/SubZones/Cave/Ice_CaveDialoge") --Ice Cave
require("/Required/Dialoge/Ice/SubZones/Igloo/Igloo_TownDialoge") --Igloo Town
require("/Required/Dialoge/Waste/WasteDialoge")
require("/Required/Dialoge/Waste/SubZones/Reactor/ReactorDialoge") --Reactor
require("/Required/Dialoge/Waste/SubZones/DTown/Destroyed_TownDialoge") --Destroyed Town
require("/Required/Dialoge/Waste/SubZones/Base/Criminal_BaseDialoge") --Criminal Base

--D dialoge choice options

function D.SetLoc(plc)
	if type(plc) ~= "string" then
		plc = 'city'
	end
	D.location = plc
end

function D.GetSubWorld(int)
	local subloc = {
		[1]='Libary',[2]='Capital Hall',[3]='Underground Market',
		[4]='Desert Town',[5]='Desert Mine',[6]='Desert Temple',
		[7]='Sea Dock',[8]='Big Green Lake',[9]='Ice Cave',[10]='Igloo Town',
		[11]='Reactor',[12]='Destroyed Town',[13]='Criminal Base',
		}
	return subloc[int]
end


function D.SetN()
	math.randomseed(os.time())
	if D[D.location] then
		nohp = 0
		for _,i in ipairs(D[D.location]) do
			if i.Hp > 0 then
				nohp = nohp + 1
			end
		end
		if nohp > 0 then
			repeat
				n = math.random(1,#D[D.location])
			until D[D.location][n].Hp > 0
		else
			return -1
		end
	else
		return -1
	end
	return n
end

function D.ChooseDialoge(int)
	n = int
	if n == -1 then
		return {
			draw=function()Alert:new("Area Clear","stat");gamestate='alert'end;
			keypressed=function(key)end
		}
	end
	if D.location == 'city' then
		if __CityEntryNote < 2 then
			Note:new("City Brochure",2)
			__CityEntryNote = __CityEntryNote + 10
		end
	elseif D.location == 'desert' then
		if __DesertEntryNote < 2 then
			Note:new("City Brochure",2)
			__DesertEntryNote = __DesertEntryNote + 10
		end
	elseif D.location == 'swamp' then
		if __SwampEntryNote < 2 then
			Note:new("City Brochure",2)
			__SwampEntryNote = __SwampEntryNote + 10
		end
	elseif D.location == 'ice' then
		if __IceEntryNote < 2 then
			Note:new("City Brochure",2)
			__IceEntryNote = __IceEntryNote + 10
		end
	elseif D.location == 'waste' then
		if __WasteEntryNote < 2 then
			Note:new("City Brochure",2)
			__WasteEntryNote = __WasteEntryNote + 10
		end
	elseif D.location == 'Libary' then
		if __LibaryEntryNote < 2 then
			--Note:new("City Brochure",2)
			__LibaryEntryNote = __LibaryEntryNote + 10
		end
	elseif D.location == 'Capital Hall' then
		if __CapitalHallEntryNote < 2 then
			--Note:new("City Brochure",2)
			__CapitalHallEntryNote = __CapitalHallEntryNote + 10
		end
	elseif D.location == 'Underground Market' then
		if __UndergroundMarketEntryNote < 2 then
			--Note:new("City Brochure",2)
			__UndergroundMarketEntryNote = __UndergroundMarketEntryNote + 10
		end
	elseif D.location == 'Desert Town' then
		if __DesertTownEntryNote < 2 then
			--Note:new("City Brochure",2)
			__DesertTownEntryNote = __DesertTownEntryNote + 10
		end
	elseif D.location == 'Desert Mine' then
		if __DesertMineEntryNote < 2 then
			--Note:new("City Brochure",2)
			__DesertMineEntryNote = __DesertMineEntryNote + 10
		end
	elseif D.location == 'Desert Temple' then
		if __DesertTempleEntryNote < 2 then
			--Note:new("City Brochure",2)
			__DesertTempleEntryNote = __DesertTempleEntryNote + 10
		end
	elseif D.location == 'Sea Dock' then
		if __SeaDockEntryNote < 2 then
			--Note:new("City Brochure",2)
			__SeaDockEntryNote = __SeaDockEntryNote + 10
		end
	elseif D.location == 'Big Green Lake' then
		if __BigGreenLakeEntryNote < 2 then
			--Note:new("City Brochure",2)
			__BigGreenLakeEntryNote = __BigGreenLakeEntryNote + 10
		end
	elseif D.location == 'Ice Cave' then
		if __IceCaveEntryNote < 2 then
			--Note:new("City Brochure",2)
			__IceCaveEntryNote = __IceCaveEntryNote + 10
		end
	elseif D.location == 'Igloo Town' then
		if __IglooTownEntryNote < 2 then
			--Note:new("City Brochure",2)
			__IglooTownEntryNote = __IglooTownEntryNote + 10
		end
	elseif D.location == 'Reactor' then
		if __ReactorEntryNote < 2 then
			--Note:new("City Brochure",2)
			__ReactorEntryNote = __ReactorEntryNote + 10
		end
	elseif D.location == 'Destroyed Town' then
		if __DestroyedTownEntryNote < 2 then
			--Note:new("City Brochure",2)
			__DestroyedTownEntryNote = __DestroyedTownEntryNote + 10
		end
	elseif D.location == 'Criminal Base' then
		if __CriminalBaseEntryNote < 2 then
			--Note:new("City Brochure",2)
			__CriminalBaseEntryNote = __CriminalBaseEntryNote + 10
		end
	end
	if D[D.location] then
		local m = D[D.location][n]
		return m
	end
end