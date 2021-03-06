---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhenfeng.xzf.
--- DateTime: 2019/6/2 下午1:29
---

local method = ngx.req.get_method()

if method ~= 'GET' and
   method ~= 'POST' then
    ngx.header['Allow'] = 'GET, POST'
    ngx.exit(405)
end

local version = ngx.req.http_version()
if version < 1.1 then
    ngx.exit(400)
end

ngx.ctx.encode = ngx.var.arg_need_encode


ngx.header.content_length = nil