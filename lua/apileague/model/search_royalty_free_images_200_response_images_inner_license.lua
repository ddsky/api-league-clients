--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_royalty_free_images_200_response_images_inner_license class
local search_royalty_free_images_200_response_images_inner_license = {}
local search_royalty_free_images_200_response_images_inner_license_mt = {
	__name = "search_royalty_free_images_200_response_images_inner_license";
	__index = search_royalty_free_images_200_response_images_inner_license;
}

local function cast_search_royalty_free_images_200_response_images_inner_license(t)
	return setmetatable(t, search_royalty_free_images_200_response_images_inner_license_mt)
end

local function new_search_royalty_free_images_200_response_images_inner_license(name, link)
	return cast_search_royalty_free_images_200_response_images_inner_license({
		["name"] = name;
		["link"] = link;
	})
end

return {
	cast = cast_search_royalty_free_images_200_response_images_inner_license;
	new = new_search_royalty_free_images_200_response_images_inner_license;
}
