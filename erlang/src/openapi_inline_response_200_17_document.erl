-module(openapi_inline_response_200_17_document).

-export([encode/1]).

-export_type([openapi_inline_response_200_17_document/0]).

-type openapi_inline_response_200_17_document() ::
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
