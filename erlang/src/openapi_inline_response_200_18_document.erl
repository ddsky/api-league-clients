-module(openapi_inline_response_200_18_document).

-export([encode/1]).

-export_type([openapi_inline_response_200_18_document/0]).

-type openapi_inline_response_200_18_document() ::
    #{ 'sentiment' => binary(),
       'confidence' => integer(),
       'average_confidence' => integer()
     }.

encode(#{ 'sentiment' := Sentiment,
          'confidence' := Confidence,
          'average_confidence' := AverageConfidence
        }) ->
    #{ 'sentiment' => Sentiment,
       'confidence' => Confidence,
       'average_confidence' => AverageConfidence
     }.
