--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_restaurants_api_200_response_restaurants_inner_address class
local search_restaurants_api_200_response_restaurants_inner_address = {}
local search_restaurants_api_200_response_restaurants_inner_address_mt = {
	__name = "search_restaurants_api_200_response_restaurants_inner_address";
	__index = search_restaurants_api_200_response_restaurants_inner_address;
}

local function cast_search_restaurants_api_200_response_restaurants_inner_address(t)
	return setmetatable(t, search_restaurants_api_200_response_restaurants_inner_address_mt)
end

local function new_search_restaurants_api_200_response_restaurants_inner_address(zipcode, country, city, latitude, lon, street_addr_2, state, street_addr, lat, longitude)
	return cast_search_restaurants_api_200_response_restaurants_inner_address({
		["zipcode"] = zipcode;
		["country"] = country;
		["city"] = city;
		["latitude"] = latitude;
		["lon"] = lon;
		["street_addr_2"] = street_addr_2;
		["state"] = state;
		["street_addr"] = street_addr;
		["lat"] = lat;
		["longitude"] = longitude;
	})
end

return {
	cast = cast_search_restaurants_api_200_response_restaurants_inner_address;
	new = new_search_restaurants_api_200_response_restaurants_inner_address;
}
