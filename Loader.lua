local module = {}
local encoder = require(cypher)
function module.new(key)
local fire = require(firebase)(key)
module.db = fire
end
function module.secure(src)
return encoder.encode(src, {"up", 9})
end
return module
