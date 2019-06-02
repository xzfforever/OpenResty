

local cjson = require("cjson.safe")

local encodeStr = cjson.encode({name="xzf", age=12})

local decodeObj = cjson.decode(encodeStr)

ngx.say(decodeObj.name)