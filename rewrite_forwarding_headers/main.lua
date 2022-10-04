local ngx = ngx

local string_format = string.format
local ngx_log = ngx.log

local _M = {}

function _M.rewrite()
  ngx_log(ngx.ERR, string_format("X-FORWARDED-SCHEME header: \"%s\"", ngx.var.http_x_forwarded_scheme))
  ngx_log(ngx.ERR, string_format("X-FORWARDED-PROTO header: \"%s\"", ngx.var.http_x_forwarded_proto))
  ngx_log(ngx.ERR, string_format("X-FORWARDED-FOR header: \"%s\"", ngx.var.http_x_forwarded_for))
  ngx_log(ngx.ERR, string_format("X-FORWARDED-HOST header: \"%s\"", ngx.var.http_x_forwarded_host))
  if ngx.var.http_x_forwarded_scheme == "https" then
    ngx_log(ngx.ERR, "Setting protocol to https")
    ngx.var.pass_access_scheme = "https"
  end
end

return _M
