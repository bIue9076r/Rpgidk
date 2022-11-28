dd8 = {}
dd8.n = 'Vulture'
dd8.m = 'A Vulture Aproaches you'
dd8.m2 = ''
dd8.o = {'f:fight','r:run'}
dd8.f = dd8.o
dd8.i = image:getImage('')
dd8.inDialoge = false
dd8.option = false
dd8.Hp = 50
dd8.Atk = 72
dd8.Def = 28
dd8.friendly = "Enemy"
function dd8.draw()
	dd8.m = 'A Vulture Aproaches you'
	dd8.o = {'f:fight','r:run'}
	love.graphics.draw(dd8.i,60,40)
	love.graphics.print({{0,0,0},dd8.n},60,260)
	love.graphics.print({{0,0,0},dd8.m},60,280)
	love.graphics.print({{0,0,0},dd8.m2},60,300)
	drawOptions(dd8.o)
	drawstats(dd8)
end
function dd8.keypressed(key)
	if key == 'f' then
		if Atk >= 75 or math.random(1,10) == 5 then
			dd8.Hp = dd8.Hp - 1
			raiseAtk(3)
			raiseDef(2)
			raiseRep(30)
			raiseCash(35)
			Alert:new('Fought The Vulture','stat')
			gamestate = 'alert'
			Exp:add(60)
		else
			Hurt(55)
			Alert:new('Pecked by The Vulture','stat')
			gamestate = 'alert'
		end
	elseif key == 'r' then
		if Def >= 25 or math.random(1,10) == 5 then
			Alert:new('Ran Away','stat')
			Exp:add(60)
			gamestate = 'alert'
		else
			Hurt(45)
			Alert:new('Pecked by The Vulture\n\nWhile Running Away','stat')
			gamestate = 'alert'
		end
	end
end
D['desert'][8] = dd8