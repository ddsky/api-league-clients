-module(openapi_inline_response_200_32).

-export([encode/1]).

-export_type([openapi_inline_response_200_32/0]).

-type openapi_inline_response_200_32() ::
    #{ 'status' => binary()
     }.

encode(#{ 'status' := Status
        }) ->
    #{ 'status' => Status
     }.
