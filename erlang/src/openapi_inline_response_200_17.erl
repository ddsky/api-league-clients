-module(openapi_inline_response_200_17).

-export([encode/1]).

-export_type([openapi_inline_response_200_17/0]).

-type openapi_inline_response_200_17() ::
    #{ 'language' => binary(),
       'confidence' => integer()
     }.

encode(#{ 'language' := Language,
          'confidence' := Confidence
        }) ->
    #{ 'language' => Language,
       'confidence' => Confidence
     }.
