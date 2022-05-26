function love.conf(t)
	t.identity = "TestGame"
	t.window.title = "TestGame"
	t.window.width = 500
	t.window.height = 500
	t.window.fullscreen = false
	t.window.resizeable = false
	t.modules.keyboard = true
	t.modules.mouse = true
	t.modules.audio = true
	t.modules.font = true
	t.modules.timer = true
	t.modules.window = true
	t.modules.image = true
end