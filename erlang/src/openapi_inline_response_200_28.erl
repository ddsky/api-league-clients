-module(openapi_inline_response_200_28).

-export([encode/1]).

-export_type([openapi_inline_response_200_28/0]).

-type openapi_inline_response_200_28() ::
    #{ 'images' => list()
     }.

encode(#{ 'images' := Images
        }) ->
    #{ 'images' => Images
     }.
