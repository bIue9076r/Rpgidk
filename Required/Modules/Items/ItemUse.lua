-- Item Use Function module
ItemUse={} -- Item use table /* Selection Table */
ItemUses = {} -- Item function  /* Function Table */

require("/Required/Modules/Range")
--Item Functions
--1 to 10
require("/Required/Modules/Items/Items1-10")
--11 to 20
require("/Required/Modules/Items/Items11-20")
--21 to 30
require("/Required/Modules/Items/Items21-30")
--31 to 40
require("/Required/Modules/Items/Items31-40")
--41 to 50
require("/Required/Modules/Items/Items41-50")
--51 to 60
require("/Required/Modules/Items/Items51-60")
--61 to 70
require("/Required/Modules/Items/Items61-70")
--71 to 80
require("/Required/Modules/Items/Items71-80")
--81 to 90
require("/Required/Modules/Items/Items81-90")

--Item Selection Functions

function ItemUseRad() -- select a random Use
	range = "0~21,23~41/2,43~46,48~56/2,57~63/2,64~68/2,70~87"
	itblu = Range.parse(range)
	n = math.random(1,#itblu)
	return ItemUse[itblu[n]]
end

function ItemUseRadFood() -- select a random Use
	rangef = "21~43/2,44~48/2,52,54,55~63/2,64~70/2,71~73,87"
	itbluf = Range.parse(range)
	t = math.random(1,#itbluf)
	return ItemUse[itbluf[t]]
end

function ItemUseGet(n) -- select a use in the ItemUse table
	if n == nil or n <= -1 or n > #ItemUse then -- if n is -1 then select a random use
		return ItemUseRad()
	end
	if n == 0 then
		return ItemUseRadFood()
	end
	return ItemUse[n]
end