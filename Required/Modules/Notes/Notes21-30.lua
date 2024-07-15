--21 to 30
-- conditions: kill Harley then kill Ashley
function NoteUses.HarleysNote()
	love.graphics.draw(image.getImage(D.location),0,0)
	love.graphics.draw(image.getImage('note'),0,0)
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
	love.graphics.draw(image.getImage(D.location),0,0)
	love.graphics.draw(image.getImage('note'),0,0)
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
	love.graphics.draw(image.getImage(D.location),0,0)
	love.graphics.draw(image.getImage('note'),0,0)
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

-- conditions: Repeating History Quest
function NoteUses.RepeatingHistory()
	love.graphics.draw(image.getImage(D.location),0,0)
	love.graphics.draw(image.getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Repeating History:"},60,80)
	love.graphics.print({{0,0,0},"Tracey Lind here. I need you to"},60,100)
	love.graphics.print({{0,0,0},"take that Revival Elixir i gave"},60,120)
	love.graphics.print({{0,0,0},"you and revive the Empress."},60,140)
	love.graphics.print({{0,0,0},""},60,160)
	love.graphics.print({{0,0,0},"To keep it simple. Valary is my"},60,180)
	love.graphics.print({{0,0,0},"fourth removed cousin. My family"},60,200)
	love.graphics.print({{0,0,0},"is not evil just because of some"},60,220)
	love.graphics.print({{0,0,0},"random relative i dont know."},60,240)
	love.graphics.print({{0,0,0},"My family had to change their"},60,260)
	love.graphics.print({{0,0,0},"names and history just to avoid"},60,280)
	love.graphics.print({{0,0,0},"this. I am going to show this"},60,300)
	love.graphics.print({{0,0,0},"fucking world what true evil"},60,320)
	love.graphics.print({{0,0,0},"looks like."},60,340)
	love.graphics.print({{0,0,0},""},60,360)
	love.graphics.print({{0,0,0},"$1000 if you do it properly"},60,380)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[24] = NoteUses.RepeatingHistory

-- conditions: remove Janet from her job
function NoteUses.JanetsNote()
	love.graphics.draw(image.getImage(D.location),0,0)
	love.graphics.draw(image.getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Dear Tracey,"},60,80)
	love.graphics.print({{0,0,0},""},60,100)
	love.graphics.print({{0,0,0},"I dont know why im writing this"},60,120)
	love.graphics.print({{0,0,0},"to be honest. I just want to get"},60,140)
	love.graphics.print({{0,0,0},"this off my chest."},60,160)
	love.graphics.print({{0,0,0},""},60,180)
	love.graphics.print({{0,0,0},"I like you."},60,200)
	love.graphics.print({{0,0,0},"I like the way your blonde hair"},60,220)
	love.graphics.print({{0,0,0},"flows in the wind, the way you"},60,240)
	love.graphics.print({{0,0,0},"love your job, the way you care"},60,260)
	love.graphics.print({{0,0,0},"about people in general."},60,280)
	love.graphics.print({{0,0,0},""},60,300)
	love.graphics.print({{0,0,0},"I'll be ok if you dont like me"},60,320)
	love.graphics.print({{0,0,0},"back. its no big deal i just"},60,340)
	love.graphics.print({{0,0,0},"needed to vent somethings on my"},60,360)
	love.graphics.print({{0,0,0},"mind."},60,380)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[25] = NoteUses.JanetsNote
