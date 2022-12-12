-- Alert module
require("/Textures/LoadTexutres")
Alert = {} -- sets up the Alert table

function Alert:new(m,n,img,aud) -- creates a new Alert
	self.nexpage = n
	self.message = m
	if img == nil then
		self.image = image:getImage("Hp")
	else
		self.image = image:getImage(img)
	end
	
	if aud == nil then
		self.audio = sound:getSound("Alert")
	else
		self.audio = sound:getSound(aud)
	end
end

function Alert:Return() -- returns the most recent Alert
	return self.message, self.image, self.audio
end

function Alert:ReturnNex() -- returns the next page
	return self.nexpage
end