--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- top_news_200_response_top_news_inner_news_inner class
local top_news_200_response_top_news_inner_news_inner = {}
local top_news_200_response_top_news_inner_news_inner_mt = {
	__name = "top_news_200_response_top_news_inner_news_inner";
	__index = top_news_200_response_top_news_inner_news_inner;
}

local function cast_top_news_200_response_top_news_inner_news_inner(t)
	return setmetatable(t, top_news_200_response_top_news_inner_news_inner_mt)
end

local function new_top_news_200_response_top_news_inner_news_inner(summary, image, id, text, title, publish_date, url, authors)
	return cast_top_news_200_response_top_news_inner_news_inner({
		["summary"] = summary;
		["image"] = image;
		["id"] = id;
		["text"] = text;
		["title"] = title;
		["publish_date"] = publish_date;
		["url"] = url;
		["authors"] = authors;
	})
end

return {
	cast = cast_top_news_200_response_top_news_inner_news_inner;
	new = new_top_news_200_response_top_news_inner_news_inner;
}
