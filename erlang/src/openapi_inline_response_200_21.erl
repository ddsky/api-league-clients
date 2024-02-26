-module(openapi_inline_response_200_21).

-export([encode/1]).

-export_type([openapi_inline_response_200_21/0]).

-type openapi_inline_response_200_21() ::
    #{ 'dates' => list()
     }.

encode(#{ 'dates' := Dates
        }) ->
    #{ 'dates' => Dates
     }.
