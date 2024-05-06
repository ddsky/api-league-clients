--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.0.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- compute_nutrition_200_response_ingredient_breakdown_inner class
local compute_nutrition_200_response_ingredient_breakdown_inner = {}
local compute_nutrition_200_response_ingredient_breakdown_inner_mt = {
	__name = "compute_nutrition_200_response_ingredient_breakdown_inner";
	__index = compute_nutrition_200_response_ingredient_breakdown_inner;
}

local function cast_compute_nutrition_200_response_ingredient_breakdown_inner(t)
	return setmetatable(t, compute_nutrition_200_response_ingredient_breakdown_inner_mt)
end

local function new_compute_nutrition_200_response_ingredient_breakdown_inner(name, amount, unit, id, nutrients)
	return cast_compute_nutrition_200_response_ingredient_breakdown_inner({
		["name"] = name;
		["amount"] = amount;
		["unit"] = unit;
		["id"] = id;
		["nutrients"] = nutrients;
	})
end

return {
	cast = cast_compute_nutrition_200_response_ingredient_breakdown_inner;
	new = new_compute_nutrition_200_response_ingredient_breakdown_inner;
}
