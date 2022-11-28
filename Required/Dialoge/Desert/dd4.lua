dd4 = {}
dd4.n = 'Wanderer'
dd4.m = '"Need something?"'
dd4.m2 = ''
dd4.o = {'y:yes','r:run','f:fight'}
dd4.f = dd4.o
dd4.i = image:getImage('')
dd4.inDialoge = false
dd4.option = false
dd4.Hp = 40
dd4.Atk = 90
dd4.Def = 40
dd4.friendly = "Neutral"
function dd4.draw()
	if dd4.inDialoge == false then
		dd4.m = '"Need something?"'
		dd4.o = {'y:yes','r:run','f:fight'}
	end
	love.graphics.draw(dd4.i,60,40)
	love.graphics.print({{0,0,0},dd4.n},60,260)
	love.graphics.print({{0,0,0},dd4.m},60,280)
	love.graphics.print({{0,0,0},dd4.m2},60,300)
	drawOptions(dd4.o)
	drawstats(dd4)
end
function dd4.keypressed(key)
	if not dd4.inDialoge then
		if key == 'y' then
			dd4.o = {
				'm:medkit $40',
				'p:poison $85',
				'a:atk bst $55',
				'd:def bst $95',
				'l:leave'
			}
			dd4.inDialoge = true
		elseif key == 'r' then
			Alert:new('Ran away','stat')
			gamestate = 'alert'
		elseif key == 'f' then
			if Atk >= 90 or math.random(1,15) == 4 then
				dd4.Hp = dd4.Hp - 1
				raiseAtk(8)
				raiseDef(1)
				lowerRep(100)
				raiseCash(25)
				Item:new("Tooth","Tooth",6,25)
				Alert:new('Fought The Wanderer','stat')
				gamestate = 'alert'
				Exp:add(140)
			else
				Hurt(70)
				Alert:new('Falied to beat The Wanderer','stat')
				gamestate = 'alert'
			end
		end
	else
		if not dd4.option then
			if key == 'm' then
				buyItem(Nitem[0],1,'world',40)
			elseif key == 'p' then
				buyItem(Nitem[1],0,'world',85)
			elseif key == 'a' then
				buyItem(Nitem[2],1,'world',55)
			elseif key == 'd' then
				buyItem(Nitem[3],0,'world',95)
			elseif key == 'l' then
				dd4.o = dd4.f
				dd4.inDialoge = false
			end
		end
	end
end
D['desert'][4] = dd4