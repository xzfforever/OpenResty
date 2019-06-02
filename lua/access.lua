
ngx.log(ngx.INFO, ngx.get_phase())


print("ngx.today: "..ngx.today())
print("ngx.localtime: "..ngx.localtime())
print("ngx.utctime: "..ngx.utctime())
print("ngx.time: "..ngx.time())
print("ngx.http_time: "..ngx.http_time(ngx.time()))
print("ngx.cookie_time: "..ngx.cookie_time(ngx.time()))
if (ngx.ctx.len) then
    print("request length: ".. ngx.ctx.len)
end
print("http method: " .. ngx.req.get_method())
