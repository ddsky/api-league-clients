-module(openapi_inline_response_200_14).

-export([encode/1]).

-export_type([openapi_inline_response_200_14/0]).

-type openapi_inline_response_200_14() ::
    #{ 'authors' => list()
     }.

encode(#{ 'authors' := Authors
        }) ->
    #{ 'authors' => Authors
     }.
