package = "kong-plugin-http-to-https-redirect"
version = "1.0-0"
source = {
    url = "git://github.com/HappyValleyIO/kong-http-to-https-redirect",
    branch = "master"
}
description = {
    summary = "A Kong plugin for redirecting HTTP traffic to HTTPS.",
    detailed = [[
      Redirects traffic from HTTP to HTTPS (currently only offers 301 redirect).
    ]],
    homepage = "https://github.com/HappyValleyIO/kong-http-to-https-redirect",
    license = "MIT"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.http-to-https-redirect.handler"] = "kong/plugins/http-to-https-redirect/handler.lua",
    ["kong.plugins.http-to-https-redirect.schema"] = "kong/plugins/http-to-https-redirect/schema.lua",
    }
}
