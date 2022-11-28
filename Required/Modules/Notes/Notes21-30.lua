--21 to 30
-- conditions: kill Harley then kill Ashley
function NoteUses.HarleysNote()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Dear Ashley,"},60,80)
	love.graphics.print({{0,0,0},"If you're reading this then i am"},60,120)
	love.graphics.print({{0,0,0},"dead."},60,140)
	love.graphics.print({{0,0,0},"They're gonna try their best"},60,160)
	love.graphics.print({{0,0,0},"to cover this whole thing up."},60,180)
	love.graphics.print({{0,0,0},"try to not spread the word we"},60,200)
	love.graphics.print({{0,0,0},"dont want widespread panic."},60,220)
	love.graphics.print({{0,0,0},"i might have not ment it while"},60,260)
	love.graphics.print({{0,0,0},"i was alive but i really do love"},60,280)
	love.graphics.print({{0,0,0},"you. i might have not been the"},60,300)
	love.graphics.print({{0,0,0},"best sister for most of my life"},60,320)
	love.graphics.print({{0,0,0},"but i hope the best for you"},60,340)
	love.graphics.print({{0,0,0},"moving forward."},60,360)
	love.graphics.print({{0,0,0},"                     -Harley"},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[21] = NoteUses.HarleysNote

-- conditions: Harley still alive but kill Ashley
function NoteUses.AshleysNote()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"I'm not really that strong with"},60,80)
	love.graphics.print({{0,0,0},"words but i have many things i"},60,120)
	love.graphics.print({{0,0,0},"want to say to you. Firstly i "},60,140)
	love.graphics.print({{0,0,0},"really do care about you i may"},60,160)
	love.graphics.print({{0,0,0},"have been the outcast of the"},60,180)
	love.graphics.print({{0,0,0},"family and might have acted"},60,200)
	love.graphics.print({{0,0,0},"like a jerk. im very sorry about"},60,220)
	love.graphics.print({{0,0,0},"that i wish i could say it "},60,260)
	love.graphics.print({{0,0,0},"person but you'll find out soon"},60,280)
	love.graphics.print({{0,0,0},"enough."},60,300)
	love.graphics.print({{0,0,0},""},60,320)
	love.graphics.print({{0,0,0},""},60,340)
	love.graphics.print({{0,0,0},"  -Amazingly Magnificent Ashley"},60,360)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[22] = NoteUses.AshleysNote

-- conditions: Loose Ends Quest
function NoteUses.LooseEnds()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Loose Ends:"},60,80)
	love.graphics.print({{0,0,0},"Ashley is a pain in the ass"},60,100)
	love.graphics.print({{0,0,0},""},60,120)
	love.graphics.print({{0,0,0},"Buy or Beat her into silence"},60,140)
	love.graphics.print({{0,0,0},"before she says anything."},60,160)
	love.graphics.print({{0,0,0},""},60,180)
	love.graphics.print({{0,0,0},""},60,200)
	love.graphics.print({{0,0,0},"note:"},60,240)
	love.graphics.print({{0,0,0},"dont kill her else her family"},60,260)
	love.graphics.print({{0,0,0},"might just wipe you of the"},60,280)
	love.graphics.print({{0,0,0},"island."},60,300)
	love.graphics.print({{0,0,0},""},60,320)
	love.graphics.print({{0,0,0},""},60,340)
	love.graphics.print({{0,0,0},"$300 for her silence"},60,360)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[23] = NoteUses.LooseEnds
