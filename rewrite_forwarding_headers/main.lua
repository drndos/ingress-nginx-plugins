local ngx = ngx

local string_format = string.format
local ngx_log = ngx.log

local _M = {}

function _M.rewrite()
  if ngx.var.http_x_forwarded_scheme == "https" then
    ngx_log(ngx.ERR, "Setting protocol to https")
    ngx.var.pass_access_scheme = "https"
  end
end

return _M
