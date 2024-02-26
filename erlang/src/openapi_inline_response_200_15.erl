-module(openapi_inline_response_200_15).

-export([encode/1]).

-export_type([openapi_inline_response_200_15/0]).

-type openapi_inline_response_200_15() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
