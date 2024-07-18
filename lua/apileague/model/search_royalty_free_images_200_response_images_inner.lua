--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_royalty_free_images_200_response_images_inner class
local search_royalty_free_images_200_response_images_inner = {}
local search_royalty_free_images_200_response_images_inner_mt = {
	__name = "search_royalty_free_images_200_response_images_inner";
	__index = search_royalty_free_images_200_response_images_inner;
}

local function cast_search_royalty_free_images_200_response_images_inner(t)
	return setmetatable(t, search_royalty_free_images_200_response_images_inner_mt)
end

local function new_search_royalty_free_images_200_response_images_inner(width, license, thumbnail, id, url, height)
	return cast_search_royalty_free_images_200_response_images_inner({
		["width"] = width;
		["license"] = license;
		["thumbnail"] = thumbnail;
		["id"] = id;
		["url"] = url;
		["height"] = height;
	})
end

return {
	cast = cast_search_royalty_free_images_200_response_images_inner;
	new = new_search_royalty_free_images_200_response_images_inner;
}
