dl3 = {}
dl3.n = 'Door'
dl3.m = 'You come across the\n\nexit'
dl3.m2 = ''
dl3.o = {'y:yes','n:no'}
dl3.f = dl3.o
dl3.i = image:getImage('')
dl3.FirstOption = false
dl3.SecondOption = false
dl3.option = false
dl3.Hp = 100
function dl3.draw()
	if dl3.inDialoge == false then
		dl3.m = 'You come across the\n\nexit'
		dl3.o = {'y:yes','n:no'}
	end
	love.graphics.draw(dl3.i,60,40)
	love.graphics.print({{0,0,0},dl3.n},60,260)
	love.graphics.print({{0,0,0},dl3.m},60,280)
	love.graphics.print({{0,0,0},dl3.m2},60,300)
	drawOptions(dl3.o)
end
function dl3.keypressed(key)
	if key == 'y' then
		D.SetLoc('city')
		Subselected = false
		Alert:new('Left the Libary','stat')
		gamestate = 'alert'
	elseif key == 'n' then
		Alert:new('Stayed in the Libary','stat')
		gamestate = 'alert'
	end
end
D['Libary'][3] = dl3