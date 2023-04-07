image = {}
settings = {mipmaps=false,linear=false,dpiscale=1}
love.filesystem.newFile('MissingTextures.log')

function image:newImage(n,p)
	Image = love.graphics.newImage(p,settings)
	image[n] = Image
end

function image:getImage(n)
	n = n or ""
	if image[n] == nil then
		if love.filesystem.getInfo('/Textures/background/'..n..'.png') then
			image:newImage(n,'/Textures/background/'..n..'.png')
			return image[n]
		end
		love.filesystem.append('MissingTextures.log',tostring(os.time())..": "..n..'\n') ;
		return image['blankImage']
	end
	return image[n]
end

__image = {}
--settings = {mipmaps=false,linear=false,dpiscale=1}
--love.filesystem.newFile('MissingTextures.log')

function __image.newImage(n,p)
	Image = love.graphics.newImage(p,settings)
	__image[n] = Image
end

function __image.getImage(n)
	n = n or ""
	if __image[n] == nil then
		if love.filesystem.getInfo('/Textures/background/'..n..'.png') then
			__image.newImage(n,'/Textures/background/'..n..'.png')
			return __image[n]
		end
		love.filesystem.append('MissingTextures.log',tostring(os.time())..": "..n..'\n') ;
		return __image['blankImage']
	end
	return __image[n]
end