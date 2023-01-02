-- Item module
require("/Textures/LoadTexutres")
require("/Textures/LoadFonts")

Item = {} -- sets up the Item table
Item.items = {} -- sets up the item inventory

function Item:new(name,icon,funint,arg,reuse,uses) -- creates a new Item
	theTable = {}
	theTable.name = name or 'null' -- the name of the item
	theTable.icon = 'placeholderIcon'--icon -- the name of the icon image
	theTable.reusable = reuse or false -- the item reuseable bool
	theTable.used = false -- the item used bool 
	theTable.uses = uses or 0 -- the amount of times the item can be used
	theTable.int = funint or -1 -- the function integer
	theTable.arg = arg or math.random(1,50) -- function arguments
	theTable.use = ItemUseGet(theTable.int) -- item use function
	table.insert(Item.items,theTable)
end

function Item:RanNew() -- random item
	theTable = {}
	theTable.name = 'Mystery Item'
	theTable.icon = 'Mystery'
	theTable.reusable = false
	theTable.used = false
	theTable.uses = 1
	theTable.int = -1 -- Setting the function integer below 0 
	--will produce the same effect as calling ItemUseRad()
	theTable.arg = math.random(1,50)
	theTable.use = ItemUseGet(theTable.int)
	table.insert(Item.items,theTable)
end

function Item:use(page,count) -- uses an item
	index = count+((page-1)*8)
	if Item.items[index] == nil or Item.items[index].use == nil then return end
	Item.items[index].use(Item.items[index].arg)
	-- calls the selected items use function
	if not Item.items[index].reusable 
	and Item.items[index].uses <= 1 then
		Item:Remove(index)
		-- removes the item
	else
		Item.items[index].used = true
		Item.items[index].uses = Item.items[index].uses - 1
	end
end

function Item:display(page) -- returns a list of items from the selected page
	upperbound = page * 8
	lowerbound = ((page-1)*8)+1
	local returntable = {}
	for i = lowerbound,upperbound do
		table.insert(returntable,Item.items[i])
	end
	return returntable;
end

function Item:isReal(n)
	return (Item.items[n] ~= nil)
end

function Item:Remove(n) -- removes the selected item
	Item.items[n] = nil
	for i = n+1,#Item.items+2 do
		Item.items[i-1]=Item.items[i]
		Item.items[i] = nil
	end
end

function Item:reload(itemTable) -- /* depreciated */
	-- you cant save the item function, which makes the item useless
	Item.items = itemTable;
end

function Item:get() -- /* depreciated */
	-- only use for saving as it gives the entire table
	return self.items;
end