--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_news_200_response class
local search_news_200_response = {}
local search_news_200_response_mt = {
	__name = "search_news_200_response";
	__index = search_news_200_response;
}

local function cast_search_news_200_response(t)
	return setmetatable(t, search_news_200_response_mt)
end

local function new_search_news_200_response(offset, Number_, available, news)
	return cast_search_news_200_response({
		["offset"] = offset;
		["number"] = Number_;
		["available"] = available;
		["news"] = news;
	})
end

return {
	cast = cast_search_news_200_response;
	new = new_search_news_200_response;
}
