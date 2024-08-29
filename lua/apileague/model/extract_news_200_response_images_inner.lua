--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- extract_news_200_response_images_inner class
local extract_news_200_response_images_inner = {}
local extract_news_200_response_images_inner_mt = {
	__name = "extract_news_200_response_images_inner";
	__index = extract_news_200_response_images_inner;
}

local function cast_extract_news_200_response_images_inner(t)
	return setmetatable(t, extract_news_200_response_images_inner_mt)
end

local function new_extract_news_200_response_images_inner(width, title, url, height)
	return cast_extract_news_200_response_images_inner({
		["width"] = width;
		["title"] = title;
		["url"] = url;
		["height"] = height;
	})
end

return {
	cast = cast_extract_news_200_response_images_inner;
	new = new_extract_news_200_response_images_inner;
}
