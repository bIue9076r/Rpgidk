-- Item Use Function module
ItemUse={} -- Item use table /* Selection Table */
ItemUses = {} -- Item function  /* Function Table */


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

--Item Selection Functions

function ItemUseRad() -- select a random Use
	n = math.random(0,(#ItemUse - 1))
	return ItemUse[n]
end

function ItemUseRadFood() -- select a random Use
	t = math.random(20,(#ItemUse - 1))
	if t == 20 then t = 15 end
	return ItemUse[t]
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