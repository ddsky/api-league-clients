--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

--package apileague

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local apileague_random_poem_200_response = require "apileague.model.random_poem_200_response"

local art_api = {}
local art_api_mt = {
	__name = "art_api";
	__index = art_api;
}

local function new_art_api(authority, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	local host, port = http_util.split_authority(authority, default_scheme)
	return setmetatable({
		host = host;
		port = port;
		basePath = basePath or "https://api.apileague.com";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, art_api_mt)
end

function art_api:image_to_ascii_art_by_url(url, width, height)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/convert-image-to-ascii-txt?url=%s&width=%s&height=%s",
			self.basePath, http_util.encodeURIComponent(url), http_util.encodeURIComponent(width), http_util.encodeURIComponent(height));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "text/plain" }
	req.headers:upsert("content-type", "text/plain")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return result, headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function art_api:random_poem(min_lines, max_lines)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/retrieve-random-poem?min-lines=%s&max-lines=%s",
			self.basePath, http_util.encodeURIComponent(min_lines), http_util.encodeURIComponent(max_lines));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return apileague_random_poem_200_response.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_art_api;
}
