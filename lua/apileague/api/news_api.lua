--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

--package apileague

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local apileague_extract_news_api_200_response = require "apileague.model.extract_news_api_200_response"
local apileague_search_news_api_200_response = require "apileague.model.search_news_api_200_response"
local apileague_top_news_api_200_response = require "apileague.model.top_news_api_200_response"

local news_api = {}
local news_api_mt = {
	__name = "news_api";
	__index = news_api;
}

local function new_news_api(authority, basePath, schemes)
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
	}, news_api_mt)
end

function news_api:extract_news_api(url, analyze)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/extract-news?url=%s&analyze=%s",
			self.basePath, http_util.encodeURIComponent(url), http_util.encodeURIComponent(analyze));
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
		return apileague_extract_news_api_200_response.cast(result), headers
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

function news_api:search_news_api(text, source_countries, language, min_sentiment, max_sentiment, earliest_publish_date, latest_publish_date, news_sources, authors, categories, entities, location_filter, sort, sort_direction, offset, Number_)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-news?text=%s&source-countries=%s&language=%s&min-sentiment=%s&max-sentiment=%s&earliest-publish-date=%s&latest-publish-date=%s&news-sources=%s&authors=%s&categories=%s&entities=%s&location-filter=%s&sort=%s&sort-direction=%s&offset=%s&number=%s",
			self.basePath, http_util.encodeURIComponent(text), http_util.encodeURIComponent(source_countries), http_util.encodeURIComponent(language), http_util.encodeURIComponent(min_sentiment), http_util.encodeURIComponent(max_sentiment), http_util.encodeURIComponent(earliest_publish_date), http_util.encodeURIComponent(latest_publish_date), http_util.encodeURIComponent(news_sources), http_util.encodeURIComponent(authors), http_util.encodeURIComponent(categories), http_util.encodeURIComponent(entities), http_util.encodeURIComponent(location_filter), http_util.encodeURIComponent(sort), http_util.encodeURIComponent(sort_direction), http_util.encodeURIComponent(offset), http_util.encodeURIComponent(Number_));
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
		return apileague_search_news_api_200_response.cast(result), headers
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

function news_api:top_news_api(source_country, language, date, headlines_only)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/retrieve-top-news?source-country=%s&language=%s&date=%s&headlines-only=%s",
			self.basePath, http_util.encodeURIComponent(source_country), http_util.encodeURIComponent(language), http_util.encodeURIComponent(date), http_util.encodeURIComponent(headlines_only));
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
		return apileague_top_news_api_200_response.cast(result), headers
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
	new = new_news_api;
}
