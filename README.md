# kong-plugin-http-to-https-redirect
301 redirect from http to https

## Installation
To use, allow kong to access route on both https and http. Only allowing http results in kong responding before ever hitting the access method in the lifecycle of the request.

Build: sudo luarocks make  
Pack: luarocks pack kong-plugin-http-to-https-redirect 1.0-0  

#Install to Kong docker  
FROM kong:1.4.0-ubuntu  
ENV KONG_PLUGINS bundled, http-to-https-redirect  
RUN USER=root luarocks install https://github.com/binhbt/kong-http-to-https-redirect/raw/master/kong-plugin-http-to-https-redirect-1.0-0.all.rock   

#enable http-->https plugin for service  
curl -i -X  POST http://localhost:8001/services/test-service/plugins  --data "name=http-to-https-redirect"  

