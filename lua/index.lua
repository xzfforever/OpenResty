

print(ngx.var.uri)

--local args = ngx.req.get_uri_args(1)
--for k, v in pairs(args) do
--    print("args: ".. k .."=".. v)
--end
ngx.say(ngx.var.arg_a)


local headers = ngx.req.get_headers(10)

for k, v in pairs(headers) do
    ngx.say(k ," = ", v)
end

ngx.say("index...")
