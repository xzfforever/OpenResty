---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by zhenfeng.xzf.
--- DateTime: 2019/6/2 下午1:30
---

if ngx.status ~= ngx.HTTP_OK then
    return
end

if ngx.ctx.encode then
    ngx.arg[1] = ngx.encode_base64(ngx.arg[1])
end