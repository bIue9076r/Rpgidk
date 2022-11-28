--System Aliases
abs = math.abs
ceil = math.ceil
floor = math.floor
log = math.log
pow = math.pow
sqrt = math.sqrt
random = math.random
randomseed = math.randomseed
sub = string.sub
tmove = table.move
tpack = table.pack
tunpack = table.unpack
clog = function(b,x)
	return math.log(x)/math.log(b)
end
log2 = function(x)
	return clog(2,x)
end
--[[
--Unimportant Functions
sin = math.sin
cos = math.cos
tan = math.tan
sinh = math.sinh
cosh = math.cosh
tanh = math.tanh
asin = math.asin
acos = math.acos
atan = math.atan
deg = math.deg
rad = math.rad
max = math.max
min = math.min
pi = math.pi
toint = math.tointeger
mtype = math.type
tcat = table.concat
tinsert = table.insert
tremove = table.remove
tsort = table.sort
]]