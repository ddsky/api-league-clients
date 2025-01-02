--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_restaurants_api_200_response_restaurants_inner_local_hours class
local search_restaurants_api_200_response_restaurants_inner_local_hours = {}
local search_restaurants_api_200_response_restaurants_inner_local_hours_mt = {
	__name = "search_restaurants_api_200_response_restaurants_inner_local_hours";
	__index = search_restaurants_api_200_response_restaurants_inner_local_hours;
}

local function cast_search_restaurants_api_200_response_restaurants_inner_local_hours(t)
	return setmetatable(t, search_restaurants_api_200_response_restaurants_inner_local_hours_mt)
end

local function new_search_restaurants_api_200_response_restaurants_inner_local_hours(operational, delivery, pickup, dine_in)
	return cast_search_restaurants_api_200_response_restaurants_inner_local_hours({
		["operational"] = operational;
		["delivery"] = delivery;
		["pickup"] = pickup;
		["dine_in"] = dine_in;
	})
end

return {
	cast = cast_search_restaurants_api_200_response_restaurants_inner_local_hours;
	new = new_search_restaurants_api_200_response_restaurants_inner_local_hours;
}
