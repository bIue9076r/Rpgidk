-- Alert module
require("/Textures/LoadTexutres")
Alert = {} -- sets up the Alert table

function Alert.new(m,n,img,aud) -- creates a new Alert
	Alert.nexpage = n
	Alert.message = m
	if img == nil then
		Alert.image = image.getImage("Hp")
	else
		Alert.image = image.getImage(img)
	end
	
	if aud == nil then
		Alert.audio = sound.getSound("Alert")
	else
		Alert.audio = sound.getSound(aud)
	end
end

function Alert.Return() -- returns the most recent Alert
	return Alert.message, Alert.image, Alert.audio
end

function Alert.ReturnNex() -- returns the next page
	return Alert.nexpage
end