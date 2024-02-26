-module(openapi_inline_response_200_16).

-export([encode/1]).

-export_type([openapi_inline_response_200_16/0]).

-type openapi_inline_response_200_16() ::
    #{ 'corrected_text' => binary()
     }.

encode(#{ 'corrected_text' := CorrectedText
        }) ->
    #{ 'corrected_text' => CorrectedText
     }.
