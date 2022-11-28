di7 = {}
di7.n = 'Ice pool'
di7.m = 'you come across an Ice Pool'
di7.m2 = ''
di7.o = {'d:drink','l:leave'}
di7.f = di7.o
di7.i = image:getImage('')
di7.inDialoge = false
di7.option = false
di7.Hp = 100
di7.Atk = 50
di7.Def = 50
di7.friendly = "Neutral"
function di7.draw()
	if di7.inDialoge == false then
		di7.m = 'you come across an Ice Pool'
		di7.o = {'d:drink','l:leave'}
	end
	love.graphics.draw(di7.i,60,40)
	love.graphics.print({{0,0,0},di7.n},60,260)
	love.graphics.print({{0,0,0},di7.m},60,280)
	love.graphics.print({{0,0,0},di7.m2},60,300)
	drawOptions(di7.o)
	drawstats(di7)
end
function di7.keypressed(key)
	if key == 'd' then
		Heal(50)
		di7.Hp = di7.Hp - 1
		Alert:new('Drank from the pool','stat')
		gamestate = 'alert'
	elseif key == 'l' then
		Alert:new('left the Area','stat')
		gamestate = 'alert'
	end
end
D['icespikes'][7] = di7