-module(openapi_inline_response_200_17_sentences).

-export([encode/1]).

-export_type([openapi_inline_response_200_17_sentences/0]).

-type openapi_inline_response_200_17_sentences() ::
    #{ 'length' => integer(),
       'sentiment' => binary(),
       'offset' => integer(),
       'confidence' => integer()
     }.

encode(#{ 'length' := Length,
          'sentiment' := Sentiment,
          'offset' := Offset,
          'confidence' := Confidence
        }) ->
    #{ 'length' => Length,
       'sentiment' => Sentiment,
       'offset' => Offset,
       'confidence' => Confidence
     }.
