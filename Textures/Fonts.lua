font = {}

function font:newFont(n,p,s)
	Font = love.graphics.newFont(p,s)
	font[n] = Font
end

function font:getFont(n)
	return font[n]
end

__font = {}

function __font.newFont(n,p,s)
	Font = love.graphics.newFont(p,s)
	__font[n] = Font
end

function __font.getFont(n)
	return __font[n]
end