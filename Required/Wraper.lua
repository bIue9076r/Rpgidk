require('/Required/Modules/Catstr')
Print = love.graphics.print

function love.graphics.Print(str,x,y,len)
    if not str.type then str[2] = catstr.new(str[2],len) end
    Print({str[1],tostring(str[2])},x,y)
end