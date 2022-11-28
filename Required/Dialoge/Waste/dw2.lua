dw2 = {}
dw2.n = 'Radioactive Barrel'
dw2.m = 'You come across a Radioactive\n\nBarrel'
dw2.m2 = ''
dw2.o = {'t:touch','r:run'}
dw2.f = dw2.o
dw2.i = image:getImage('')
dw2.inDialoge = false
dw2.option = false
dw2.Hp = 100
dw2.Atk = 100
dw2.Def = 100
dw2.friendly = "Neutral"
function dw2.draw()
	dw2.m = 'You come across a Radioactive\n\nBarrel'
	dw2.o = {'t:talk','r:run'}
	love.graphics.draw(dw2.i,60,40)
	love.graphics.print({{0,0,0},dw2.n},60,260)
	love.graphics.print({{0,0,0},dw2.m},60,280)
	love.graphics.print({{0,0,0},dw2.m2},60,300)
	drawOptions(dw2.o)
	drawstats(dw2)
end
function dw2.keypressed(key)
	if key == 't' then
		if(math.random(0,1) == 1) then
			Heal(100)
			Alert:new('That worked some how','stat')
		else
			Hurt(100)
			Alert:new('Hurt by the Radiation','stat')
		end
		gamestate = 'alert'
	elseif key == 'f' then
		dw2.Hp = dw2.Hp - 1
		Hurt(100)
		Alert:new('Hurt by the Radiation?','stat')
		gamestate = 'alert'
	elseif key == 'l' then
		Alert:new('left the Area','stat')
		gamestate = 'alert'
	end
end
D['wasteland'][2] = dw2