--21 to 30
function NoteUses.HarleysNote()
	love.graphics.draw(image:getImage(D.location),0,0)
	love.graphics.draw(image:getImage('note'),0,0)
	love.graphics.print({{0,0,0},"Dear Ashley,"},60,80)
	love.graphics.print({{0,0,0},"If you're reading this then i am"},60,120)
	love.graphics.print({{0,0,0},"dead."},60,140)
	love.graphics.print({{0,0,0},"Their gonna try their best"},60,160)
	love.graphics.print({{0,0,0},"to cover this whole thing up."},60,180)
	love.graphics.print({{0,0,0},"try to not spread the word we"},60,200)
	love.graphics.print({{0,0,0},"dont want widespread panic."},60,220)
	love.graphics.print({{0,0,0},"i might have not ment it while"},60,260)
	love.graphics.print({{0,0,0},"i was alive but i really do love"},60,280)
	love.graphics.print({{0,0,0},"you. i might have not been the"},60,300)
	love.graphics.print({{0,0,0},"best sister for most of my life"},60,320)
	love.graphics.print({{0,0,0},"but i hope the best for you"},60,340)
	love.graphics.print({{0,0,0},"moving forward."},60,360)
	love.graphics.print({{0,0,0},""},60,400)
	------------------------------12345678901234567890123456789012
end
NoteUse[21] = NoteUses.HarleysNote
