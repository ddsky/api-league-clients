--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- top_news_200_response_top_news_inner class
local top_news_200_response_top_news_inner = {}
local top_news_200_response_top_news_inner_mt = {
	__name = "top_news_200_response_top_news_inner";
	__index = top_news_200_response_top_news_inner;
}

local function cast_top_news_200_response_top_news_inner(t)
	return setmetatable(t, top_news_200_response_top_news_inner_mt)
end

local function new_top_news_200_response_top_news_inner(news)
	return cast_top_news_200_response_top_news_inner({
		["news"] = news;
	})
end

return {
	cast = cast_top_news_200_response_top_news_inner;
	new = new_top_news_200_response_top_news_inner;
}
