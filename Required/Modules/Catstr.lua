catstr = {}
catstr.str = ""
catstr.len = #catstr.str
catstr.maxl = ""
catstr.off = 0
catstr.type = "cstr"
catstr.dt = 500

function catstr.new(str, mxl)
	local c = {
		len = #str,
		maxl = mxl or 25,
		str = str,
		off = 0,
	}

	local mt = {
		__index = catstr,
		__tostring = catstr.get,
	}

	return setmetatable(c,mt)
end

function catstr:get()
	local b, t;	-- fabrique deux vars
	b = 1 + self.off
	t = (self.maxl + self.off) - 3

	if t >= self.len then
		t = self.len
		self.off = 0
		return string.sub(self.str,b,t)
	end

	if self.dt <= 0 then self.off = self.off + self.maxl; self.dt = 500 end
	self.dt = self.dt - 1
	return string.sub(self.str,b,t).."..."
end
