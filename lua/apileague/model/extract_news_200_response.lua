--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_news_200_response class
local extract_news_200_response = {}
local extract_news_200_response_mt = {
	__name = "extract_news_200_response";
	__index = extract_news_200_response;
}

local function cast_extract_news_200_response(t)
	return setmetatable(t, extract_news_200_response_mt)
end

local function new_extract_news_200_response(title, text, url, images, videos, publish_date, authors, language)
	return cast_extract_news_200_response({
		["title"] = title;
		["text"] = text;
		["url"] = url;
		["images"] = images;
		["videos"] = videos;
		["publish_date"] = publish_date;
		["authors"] = authors;
		["language"] = language;
	})
end

return {
	cast = cast_extract_news_200_response;
	new = new_extract_news_200_response;
}
