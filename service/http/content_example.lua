---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhenfeng.xzf.
--- DateTime: 2019/6/2 下午1:29
---

local function action_get()
    ngx.req.discard_body()

    local t = ngx.time()

    ngx.say(ngx.http_time(t))

end


local function action_post()
    ngx.req.read_body()

    local data = ngx.req.get_body_data()
    local num = tonumber(data)

    if not num then
        ngx.log(ngx.ERR, "xxx")
        ngx.exit(400)
    end

    ngx.say(ngx.http_time(num))

end

local actions = {
    GET = action_get,
    POST = action_post
}

local method = ngx.req.get_method()

actions[method]()
