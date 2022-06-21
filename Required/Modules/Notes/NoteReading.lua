-- Note Use Function module
NoteUse={} -- Note use table /* Selection Table */
NoteUses = {} -- Note function  /* Function Table */
RanNoteUse = {} -- Random Note Functions /* Function Table */

	--32 chars long
	--16 chars tall
	--60,80
	--60,400
	--love.graphics.print({{0,0,0},""},60,80)

--Note Functions
--1 to 10
require("/Required/Modules/Notes/Notes1-10")
--11-20
require("/Required/Modules/Notes/Notes11-20")
--21-30
require("/Required/Modules/Notes/Notes21-30")

--Random Note Functions
--1 to 10
require("/Required/Modules/Notes/RNotes1-10")

--Note Selection Functions

function NoteUseRad() -- select a random Use
	n = math.random(1,#RanNoteUse)
	return RanNoteUse[n]
end


function NoteUseGet(n) -- select a use in the NoteUse table
	if n == nil or n <= -1 or n > #NoteUse then -- if n is -1 then select a random use
		return NoteUseRad()
	end
	return NoteUse[n]
end