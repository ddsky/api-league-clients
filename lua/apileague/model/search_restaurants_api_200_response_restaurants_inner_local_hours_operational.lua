--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_restaurants_api_200_response_restaurants_inner_local_hours_operational class
local search_restaurants_api_200_response_restaurants_inner_local_hours_operational = {}
local search_restaurants_api_200_response_restaurants_inner_local_hours_operational_mt = {
	__name = "search_restaurants_api_200_response_restaurants_inner_local_hours_operational";
	__index = search_restaurants_api_200_response_restaurants_inner_local_hours_operational;
}

local function cast_search_restaurants_api_200_response_restaurants_inner_local_hours_operational(t)
	return setmetatable(t, search_restaurants_api_200_response_restaurants_inner_local_hours_operational_mt)
end

local function new_search_restaurants_api_200_response_restaurants_inner_local_hours_operational(sunday, saturday, tuesday, thursday, friday, wednesday, monday)
	return cast_search_restaurants_api_200_response_restaurants_inner_local_hours_operational({
		["sunday"] = sunday;
		["saturday"] = saturday;
		["tuesday"] = tuesday;
		["thursday"] = thursday;
		["friday"] = friday;
		["wednesday"] = wednesday;
		["monday"] = monday;
	})
end

return {
	cast = cast_search_restaurants_api_200_response_restaurants_inner_local_hours_operational;
	new = new_search_restaurants_api_200_response_restaurants_inner_local_hours_operational;
}
