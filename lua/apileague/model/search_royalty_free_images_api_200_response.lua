--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_royalty_free_images_api_200_response class
local search_royalty_free_images_api_200_response = {}
local search_royalty_free_images_api_200_response_mt = {
	__name = "search_royalty_free_images_api_200_response";
	__index = search_royalty_free_images_api_200_response;
}

local function cast_search_royalty_free_images_api_200_response(t)
	return setmetatable(t, search_royalty_free_images_api_200_response_mt)
end

local function new_search_royalty_free_images_api_200_response(images)
	return cast_search_royalty_free_images_api_200_response({
		["images"] = images;
	})
end

return {
	cast = cast_search_royalty_free_images_api_200_response;
	new = new_search_royalty_free_images_api_200_response;
}
