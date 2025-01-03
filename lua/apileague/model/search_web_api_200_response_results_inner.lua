--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.6.4
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- search_web_api_200_response_results_inner class
local search_web_api_200_response_results_inner = {}
local search_web_api_200_response_results_inner_mt = {
	__name = "search_web_api_200_response_results_inner";
	__index = search_web_api_200_response_results_inner;
}

local function cast_search_web_api_200_response_results_inner(t)
	return setmetatable(t, search_web_api_200_response_results_inner_mt)
end

local function new_search_web_api_200_response_results_inner(title, summary, url)
	return cast_search_web_api_200_response_results_inner({
		["title"] = title;
		["summary"] = summary;
		["url"] = url;
	})
end

return {
	cast = cast_search_web_api_200_response_results_inner;
	new = new_search_web_api_200_response_results_inner;
}
