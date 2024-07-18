--[[
  API League

  API League is a Hub for World Class APIs.

  The version of the OpenAPI document: 1.5.0
  Contact: mail@apileague.com
  Generated by: https://openapi-generator.tech
]]

-- detect_sentiment_200_response_document class
local detect_sentiment_200_response_document = {}
local detect_sentiment_200_response_document_mt = {
	__name = "detect_sentiment_200_response_document";
	__index = detect_sentiment_200_response_document;
}

local function cast_detect_sentiment_200_response_document(t)
	return setmetatable(t, detect_sentiment_200_response_document_mt)
end

local function new_detect_sentiment_200_response_document(sentiment, confidence, average_confidence)
	return cast_detect_sentiment_200_response_document({
		["sentiment"] = sentiment;
		["confidence"] = confidence;
		["average_confidence"] = average_confidence;
	})
end

return {
	cast = cast_detect_sentiment_200_response_document;
	new = new_detect_sentiment_200_response_document;
}
