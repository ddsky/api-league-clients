-module(openapi_inline_response_200_27).

-export([encode/1]).

-export_type([openapi_inline_response_200_27/0]).

-type openapi_inline_response_200_27() ::
    #{ 'entities' => list()
     }.

encode(#{ 'entities' := Entities
        }) ->
    #{ 'entities' => Entities
     }.
