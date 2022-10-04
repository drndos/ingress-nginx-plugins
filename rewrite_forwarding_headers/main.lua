local ngx = ngx

local string_format = string.format
local ngx_log = ngx.log

local _M = {}

function _M.rewrite()
  ngx_log(ngx.ERR, "Hello world")
  if ngx.var.http_x_forwarded_proto then
    ngx_log(ngx.ERR, string_format("X-FORWARDED-PROTO header: \"%s\"", ngx.var.http_x_forwarded_proto))
    ngx_log(ngx.ERR, string_format("X-FORWARDED-FOR header: \"%s\"", ngx.var.http_x_forwarded_for))
    ngx_log(ngx.ERR, string_format("X-FORWARDED-HOST header: \"%s\"", ngx.var.http_x_forwarded_host))
  end
end

return _M
