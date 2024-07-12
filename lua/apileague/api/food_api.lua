--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.4.2
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

--package apileague

local http_request = require "http.request"
local http_util = require "http.util"
local dkjson = require "dkjson"
local basexx = require "basexx"

-- model import
local apileague_compute_nutrition_200_response = require "apileague.model.compute_nutrition_200_response"
local apileague_retrieve_recipe_information_200_response = require "apileague.model.retrieve_recipe_information_200_response"
local apileague_search_recipes_200_response = require "apileague.model.search_recipes_200_response"
local apileague_search_restaurants_200_response = require "apileague.model.search_restaurants_200_response"

local food_api = {}
local food_api_mt = {
	__name = "food_api";
	__index = food_api;
}

local function new_food_api(authority, basePath, schemes)
	local schemes_map = {}
	for _,v in ipairs(schemes) do
		schemes_map[v] = v
	end
	local default_scheme = schemes_map.https or schemes_map.http
	local host, port = http_util.split_authority(authority, default_scheme)
	return setmetatable({
		host = host;
		port = port;
		basePath = basePath or "https://api.apileague.com";
		schemes = schemes_map;
		default_scheme = default_scheme;
		http_username = nil;
		http_password = nil;
		api_key = {};
		access_token = nil;
	}, food_api_mt)
end

function food_api:compute_nutrition(ingredients, servings, reduce_oils)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/compute-nutrition?ingredients=%s&servings=%s&reduce-oils=%s",
			self.basePath, http_util.encodeURIComponent(ingredients), http_util.encodeURIComponent(servings), http_util.encodeURIComponent(reduce_oils));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return apileague_compute_nutrition_200_response.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function food_api:retrieve_recipe_information(id, add_wine_pairing)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/retrieve-recipe?id=%s&add-wine-pairing=%s",
			self.basePath, http_util.encodeURIComponent(id), http_util.encodeURIComponent(add_wine_pairing));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return apileague_retrieve_recipe_information_200_response.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function food_api:search_recipes(query, cuisines, exclude_cuisines, meal_type, diet, intolerances, equipment, include_ingredients, exclude_ingredients, fill_ingredients, add_recipe_information, max_time, min_servings, max_servings, min_calories, max_calories, min_carbs, max_carbs, min_protein, max_protein, min_fat, max_fat, min_sugar, max_sugar, min_fiber, max_fiber, min_folate, max_folate, min_folic_acid, max_folic_acid, min_iodine, max_iodine, min_iron, max_iron, min_zinc, max_zinc, min_magnesium, max_magnesium, min_manganese, max_manganese, min_phosphorus, max_phosphorus, min_potassium, max_potassium, min_sodium, max_sodium, min_selenium, max_selenium, min_copper, max_copper, min_calcium, max_calcium, min_choline, max_choline, min_cholesterol, max_cholesterol, min_fluoride, max_fluoride, min_alcohol, max_alcohol, min_caffeine, max_caffeine, min_saturated_fat, max_saturated_fat, min_vitamin_a, max_vitamin_a, min_vitamin_c, max_vitamin_c, min_vitamin_d, max_vitamin_d, min_vitamin_e, max_vitamin_e, min_vitamin_k, max_vitamin_k, min_vitamin_b1, max_vitamin_b1, min_vitamin_b2, max_vitamin_b2, min_vitamin_b3, max_vitamin_b3, min_vitamin_b5, max_vitamin_b5, min_vitamin_b6, max_vitamin_b6, min_vitamin_b12, max_vitamin_b12, sort, sort_direction, offset, Number_)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-recipes?query=%s&cuisines=%s&exclude-cuisines=%s&meal-type=%s&diet=%s&intolerances=%s&equipment=%s&include-ingredients=%s&exclude-ingredients=%s&fill-ingredients=%s&add-recipe-information=%s&max-time=%s&min-servings=%s&max-servings=%s&min-calories=%s&max-calories=%s&min-carbs=%s&max-carbs=%s&min-protein=%s&max-protein=%s&min-fat=%s&max-fat=%s&min-sugar=%s&max-sugar=%s&min-fiber=%s&max-fiber=%s&min-folate=%s&max-folate=%s&min-folic-acid=%s&max-folic-acid=%s&min-iodine=%s&max-iodine=%s&min-iron=%s&max-iron=%s&min-zinc=%s&max-zinc=%s&min-magnesium=%s&max-magnesium=%s&min-manganese=%s&max-manganese=%s&min-phosphorus=%s&max-phosphorus=%s&min-potassium=%s&max-potassium=%s&min-sodium=%s&max-sodium=%s&min-selenium=%s&max-selenium=%s&min-copper=%s&max-copper=%s&min-calcium=%s&max-calcium=%s&min-choline=%s&max-choline=%s&min-cholesterol=%s&max-cholesterol=%s&min-fluoride=%s&max-fluoride=%s&min-alcohol=%s&max-alcohol=%s&min-caffeine=%s&max-caffeine=%s&min-saturated-fat=%s&max-saturated-fat=%s&min-vitamin-a=%s&max-vitamin-a=%s&min-vitamin-c=%s&max-vitamin-c=%s&min-vitamin-d=%s&max-vitamin-d=%s&min-vitamin-e=%s&max-vitamin-e=%s&min-vitamin-k=%s&max-vitamin-k=%s&min-vitamin-b1=%s&max-vitamin-b1=%s&min-vitamin-b2=%s&max-vitamin-b2=%s&min-vitamin-b3=%s&max-vitamin-b3=%s&min-vitamin-b5=%s&max-vitamin-b5=%s&min-vitamin-b6=%s&max-vitamin-b6=%s&min-vitamin-b12=%s&max-vitamin-b12=%s&sort=%s&sort-direction=%s&offset=%s&number=%s",
			self.basePath, http_util.encodeURIComponent(query), http_util.encodeURIComponent(cuisines), http_util.encodeURIComponent(exclude_cuisines), http_util.encodeURIComponent(meal_type), http_util.encodeURIComponent(diet), http_util.encodeURIComponent(intolerances), http_util.encodeURIComponent(equipment), http_util.encodeURIComponent(include_ingredients), http_util.encodeURIComponent(exclude_ingredients), http_util.encodeURIComponent(fill_ingredients), http_util.encodeURIComponent(add_recipe_information), http_util.encodeURIComponent(max_time), http_util.encodeURIComponent(min_servings), http_util.encodeURIComponent(max_servings), http_util.encodeURIComponent(min_calories), http_util.encodeURIComponent(max_calories), http_util.encodeURIComponent(min_carbs), http_util.encodeURIComponent(max_carbs), http_util.encodeURIComponent(min_protein), http_util.encodeURIComponent(max_protein), http_util.encodeURIComponent(min_fat), http_util.encodeURIComponent(max_fat), http_util.encodeURIComponent(min_sugar), http_util.encodeURIComponent(max_sugar), http_util.encodeURIComponent(min_fiber), http_util.encodeURIComponent(max_fiber), http_util.encodeURIComponent(min_folate), http_util.encodeURIComponent(max_folate), http_util.encodeURIComponent(min_folic_acid), http_util.encodeURIComponent(max_folic_acid), http_util.encodeURIComponent(min_iodine), http_util.encodeURIComponent(max_iodine), http_util.encodeURIComponent(min_iron), http_util.encodeURIComponent(max_iron), http_util.encodeURIComponent(min_zinc), http_util.encodeURIComponent(max_zinc), http_util.encodeURIComponent(min_magnesium), http_util.encodeURIComponent(max_magnesium), http_util.encodeURIComponent(min_manganese), http_util.encodeURIComponent(max_manganese), http_util.encodeURIComponent(min_phosphorus), http_util.encodeURIComponent(max_phosphorus), http_util.encodeURIComponent(min_potassium), http_util.encodeURIComponent(max_potassium), http_util.encodeURIComponent(min_sodium), http_util.encodeURIComponent(max_sodium), http_util.encodeURIComponent(min_selenium), http_util.encodeURIComponent(max_selenium), http_util.encodeURIComponent(min_copper), http_util.encodeURIComponent(max_copper), http_util.encodeURIComponent(min_calcium), http_util.encodeURIComponent(max_calcium), http_util.encodeURIComponent(min_choline), http_util.encodeURIComponent(max_choline), http_util.encodeURIComponent(min_cholesterol), http_util.encodeURIComponent(max_cholesterol), http_util.encodeURIComponent(min_fluoride), http_util.encodeURIComponent(max_fluoride), http_util.encodeURIComponent(min_alcohol), http_util.encodeURIComponent(max_alcohol), http_util.encodeURIComponent(min_caffeine), http_util.encodeURIComponent(max_caffeine), http_util.encodeURIComponent(min_saturated_fat), http_util.encodeURIComponent(max_saturated_fat), http_util.encodeURIComponent(min_vitamin_a), http_util.encodeURIComponent(max_vitamin_a), http_util.encodeURIComponent(min_vitamin_c), http_util.encodeURIComponent(max_vitamin_c), http_util.encodeURIComponent(min_vitamin_d), http_util.encodeURIComponent(max_vitamin_d), http_util.encodeURIComponent(min_vitamin_e), http_util.encodeURIComponent(max_vitamin_e), http_util.encodeURIComponent(min_vitamin_k), http_util.encodeURIComponent(max_vitamin_k), http_util.encodeURIComponent(min_vitamin_b1), http_util.encodeURIComponent(max_vitamin_b1), http_util.encodeURIComponent(min_vitamin_b2), http_util.encodeURIComponent(max_vitamin_b2), http_util.encodeURIComponent(min_vitamin_b3), http_util.encodeURIComponent(max_vitamin_b3), http_util.encodeURIComponent(min_vitamin_b5), http_util.encodeURIComponent(max_vitamin_b5), http_util.encodeURIComponent(min_vitamin_b6), http_util.encodeURIComponent(max_vitamin_b6), http_util.encodeURIComponent(min_vitamin_b12), http_util.encodeURIComponent(max_vitamin_b12), http_util.encodeURIComponent(sort), http_util.encodeURIComponent(sort_direction), http_util.encodeURIComponent(offset), http_util.encodeURIComponent(Number_));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return apileague_search_recipes_200_response.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

function food_api:search_restaurants(lat, lon, query, distance, budget, min_rating, cuisine, is_open, page, sort)
	local req = http_request.new_from_uri({
		scheme = self.default_scheme;
		host = self.host;
		port = self.port;
		path = string.format("%s/search-restaurants?query=%s&lat=%s&lon=%s&distance=%s&budget=%s&min-rating=%s&cuisine=%s&is-open=%s&page=%s&sort=%s",
			self.basePath, http_util.encodeURIComponent(query), http_util.encodeURIComponent(lat), http_util.encodeURIComponent(lon), http_util.encodeURIComponent(distance), http_util.encodeURIComponent(budget), http_util.encodeURIComponent(min_rating), http_util.encodeURIComponent(cuisine), http_util.encodeURIComponent(is_open), http_util.encodeURIComponent(page), http_util.encodeURIComponent(sort));
	})

	-- set HTTP verb
	req.headers:upsert(":method", "GET")
	-- TODO: create a function to select proper content-type
	--local var_accept = { "application/json" }
	req.headers:upsert("content-type", "application/json")

	-- TODO: api key in query 'api-key'
	-- api key in headers 'x-api-key'
	if self.api_key['x-api-key'] then
		req.headers:upsert("headerApiKey", self.api_key['x-api-key'])
	end

	-- make the HTTP call
	local headers, stream, errno = req:go()
	if not headers then
		return nil, stream, errno
	end
	local http_status = headers:get(":status")
	if http_status:sub(1,1) == "2" then
		local body, err, errno2 = stream:get_body_as_string()
		-- exception when getting the HTTP body
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		local result, _, err3 = dkjson.decode(body)
		-- exception when decoding the HTTP body
		if result == nil then
			return nil, err3
		end
		return apileague_search_restaurants_200_response.cast(result), headers
	else
		local body, err, errno2 = stream:get_body_as_string()
		if not body then
			return nil, err, errno2
		end
		stream:shutdown()
		-- return the error message (http body)
		return nil, http_status, body
	end
end

return {
	new = new_food_api;
}
