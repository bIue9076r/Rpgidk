image = {}
settings = {mipmaps=false,linear=false,dpiscale=1}
love.filesystem.newFile('MissingTextures.log')

function image.newImage(n,p)
	Image = love.graphics.newImage(p,settings)
	image[n] = Image
end

function image.getImage(n)
	n = n or ""
	if image[n] == nil then
		if love.filesystem.getInfo('/Textures/background/'..n..'.png') then
			image.newImage(n,'/Textures/background/'..n..'.png')
			return image[n]
		end
		love.filesystem.append('MissingTextures.log',"["..tostring(os.date("%c")).."]: "..n..'\n') ;
		return image['blankImage']
	end
	return image[n]
end
