--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_recipe_information_api_200_response_scores class
local retrieve_recipe_information_api_200_response_scores = {}
local retrieve_recipe_information_api_200_response_scores_mt = {
	__name = "retrieve_recipe_information_api_200_response_scores";
	__index = retrieve_recipe_information_api_200_response_scores;
}

local function cast_retrieve_recipe_information_api_200_response_scores(t)
	return setmetatable(t, retrieve_recipe_information_api_200_response_scores_mt)
end

local function new_retrieve_recipe_information_api_200_response_scores(meta_score, weight_watcher_smart_points, health_score)
	return cast_retrieve_recipe_information_api_200_response_scores({
		["meta_score"] = meta_score;
		["weight_watcher_smart_points"] = weight_watcher_smart_points;
		["health_score"] = health_score;
	})
end

return {
	cast = cast_retrieve_recipe_information_api_200_response_scores;
	new = new_retrieve_recipe_information_api_200_response_scores;
}
