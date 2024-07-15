-- Note module
require("/Textures/LoadTexutres")
require("/Textures/LoadFonts")

Note = {} -- sets up the Note table
Note.Notes = {} -- sets up the Note inventory
Note.page = 0
Note.count = 0

function Note.new(name,funint) -- creates a new Note
	theTable = {}
	theTable.name = name or 'null' -- the name of the Note
	theTable.icon = 'placeholderIcon'--'Mystery' -- the icon image
	theTable.int = funint or -1 -- the function integer
	theTable.use = NoteUseGet(theTable.int) -- Note use function
	table.insert(Note.Notes,theTable)
end

function Note.RanNew() -- random Note
	theTable = {}
	theTable.name = 'Mystery Note'
	theTable.icon = 'Mystery_Note'
	theTable.int = -1 -- Setting the function integer below 0 
	--will produce the same effect as calling NoteUseRad()
	theTable.use = NoteUseGet(theTable.int)
	table.insert(Note.Notes,theTable)
end

function Note.use(page,count)-- uses an Note
	Note.page = page
	Note.count = count
	if Note.Notes[Note.count+((Note.page-1)*8)] ~= nil then
		pev_gamestate = gamestate
		gamestate = 'note'
		-- changes the gamestate
	end
end

function Note.throwAway(page,count)
	Note.Remove(count+((page-1)*8))
	-- removes the Note
end

function Note.display(page) -- returns a list of Notes from the selected page
	upperbound = page * 8
	lowerbound = ((page-1)*8)+1
	local returntable = {}
	for i = lowerbound,upperbound do
		table.insert(returntable,Note.Notes[i])
	end
	return returntable;
end

function Note.Remove(n) -- removes the selected Note
	Note.Notes[n] = nil
	for i = n+1,#Note.Notes+2 do
		Note.Notes[i-1]=Note.Notes[i]
		Note.Notes[i] = nil
	end
end

function Note.reload(NoteTable) -- /* depreciated */
	-- you cant save the function, which makes the Note useless
	Note.Notes = NoteTable;
end

function Note.get()
	-- only use for saving as it gives the entire table
	return Note.Notes;
end