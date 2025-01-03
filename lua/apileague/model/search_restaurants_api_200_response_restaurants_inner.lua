--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_restaurants_api_200_response_restaurants_inner class
local search_restaurants_api_200_response_restaurants_inner = {}
local search_restaurants_api_200_response_restaurants_inner_mt = {
	__name = "search_restaurants_api_200_response_restaurants_inner";
	__index = search_restaurants_api_200_response_restaurants_inner;
}

local function cast_search_restaurants_api_200_response_restaurants_inner(t)
	return setmetatable(t, search_restaurants_api_200_response_restaurants_inner_mt)
end

local function new_search_restaurants_api_200_response_restaurants_inner(offers_third_party_delivery, address, supports_upc_codes, is_open, description, weighted_rating_value, type, offers_first_party_delivery, aggregated_rating_count, pickup_enabled, cuisines, miles, dollar_signs, delivery_enabled, name, phone_number, _id, local_hours)
	return cast_search_restaurants_api_200_response_restaurants_inner({
		["offers_third_party_delivery"] = offers_third_party_delivery;
		["address"] = address;
		["supports_upc_codes"] = supports_upc_codes;
		["is_open"] = is_open;
		["description"] = description;
		["weighted_rating_value"] = weighted_rating_value;
		["type"] = type;
		["offers_first_party_delivery"] = offers_first_party_delivery;
		["aggregated_rating_count"] = aggregated_rating_count;
		["pickup_enabled"] = pickup_enabled;
		["cuisines"] = cuisines;
		["miles"] = miles;
		["dollar_signs"] = dollar_signs;
		["delivery_enabled"] = delivery_enabled;
		["name"] = name;
		["phone_number"] = phone_number;
		["_id"] = _id;
		["local_hours"] = local_hours;
	})
end

return {
	cast = cast_search_restaurants_api_200_response_restaurants_inner;
	new = new_search_restaurants_api_200_response_restaurants_inner;
}
