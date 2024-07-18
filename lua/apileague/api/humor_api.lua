--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

--package apileague

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local apileague_generate_nonsense_word_200_response = require "apileague.model.generate_nonsense_word_200_response"
local apileague_random_meme_200_response = require "apileague.model.random_meme_200_response"
local apileague_search_gifs_200_response = require "apileague.model.search_gifs_200_response"
local apileague_search_jokes_200_response = require "apileague.model.search_jokes_200_response"
local apileague_search_jokes_200_response_jokes_inner = require "apileague.model.search_jokes_200_response_jokes_inner"
local apileague_search_memes_200_response = require "apileague.model.search_memes_200_response"

local humor_api = {}
local humor_api_mt = {
	__name = "humor_api";
	__index = humor_api;
}

local function new_humor_api(authority, basePath, schemes)
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
	}, humor_api_mt)
end

function humor_api:generate_nonsense_word()
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/generate-nonsense-word",
			self.basePath);
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
		return apileague_generate_nonsense_word_200_response.cast(result), headers
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

function humor_api:random_joke(include_tags, exclude_tags, min_rating, max_length)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/retrieve-random-joke?include-tags=%s&exclude-tags=%s&min-rating=%s&max-length=%s",
			self.basePath, http_util.encodeURIComponent(include_tags), http_util.encodeURIComponent(exclude_tags), http_util.encodeURIComponent(min_rating), http_util.encodeURIComponent(max_length));
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
		return apileague_search_jokes_200_response_jokes_inner.cast(result), headers
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

function humor_api:random_meme(keywords, keywords_in_image, media_type, min_rating, max_age_days)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/retrieve-random-meme?keywords=%s&keywords-in-image=%s&media-type=%s&min-rating=%s&max-age-days=%s",
			self.basePath, http_util.encodeURIComponent(keywords), http_util.encodeURIComponent(keywords_in_image), http_util.encodeURIComponent(media_type), http_util.encodeURIComponent(min_rating), http_util.encodeURIComponent(max_age_days));
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
		return apileague_random_meme_200_response.cast(result), headers
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

function humor_api:search_gifs(query, Number_)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-gifs?query=%s&number=%s",
			self.basePath, http_util.encodeURIComponent(query), http_util.encodeURIComponent(Number_));
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
		return apileague_search_gifs_200_response.cast(result), headers
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

function humor_api:search_jokes(keywords, include_tags, exclude_tags, min_rating, max_length, offset, Number_)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-jokes?keywords=%s&include-tags=%s&exclude-tags=%s&min-rating=%s&max-length=%s&offset=%s&number=%s",
			self.basePath, http_util.encodeURIComponent(keywords), http_util.encodeURIComponent(include_tags), http_util.encodeURIComponent(exclude_tags), http_util.encodeURIComponent(min_rating), http_util.encodeURIComponent(max_length), http_util.encodeURIComponent(offset), http_util.encodeURIComponent(Number_));
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
		return apileague_search_jokes_200_response.cast(result), headers
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

function humor_api:search_memes(keywords, keywords_in_image, media_type, min_rating, max_age_days, offset, Number_)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-memes?keywords=%s&keywords-in-image=%s&media-type=%s&min-rating=%s&max-age-days=%s&offset=%s&number=%s",
			self.basePath, http_util.encodeURIComponent(keywords), http_util.encodeURIComponent(keywords_in_image), http_util.encodeURIComponent(media_type), http_util.encodeURIComponent(min_rating), http_util.encodeURIComponent(max_age_days), http_util.encodeURIComponent(offset), http_util.encodeURIComponent(Number_));
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
		return apileague_search_memes_200_response.cast(result), headers
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
	new = new_humor_api;
}
