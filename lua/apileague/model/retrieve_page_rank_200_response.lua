--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.3.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- retrieve_page_rank_200_response class
local retrieve_page_rank_200_response = {}
local retrieve_page_rank_200_response_mt = {
	__name = "retrieve_page_rank_200_response";
	__index = retrieve_page_rank_200_response;
}

local function cast_retrieve_page_rank_200_response(t)
	return setmetatable(t, retrieve_page_rank_200_response_mt)
end

local function new_retrieve_page_rank_200_response(page_rank, position, percentile)
	return cast_retrieve_page_rank_200_response({
		["page_rank"] = page_rank;
		["position"] = position;
		["percentile"] = percentile;
	})
end

return {
	cast = cast_retrieve_page_rank_200_response;
	new = new_retrieve_page_rank_200_response;
}
