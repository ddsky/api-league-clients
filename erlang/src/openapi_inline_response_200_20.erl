-module(openapi_inline_response_200_20).

-export([encode/1]).

-export_type([openapi_inline_response_200_20/0]).

-type openapi_inline_response_200_20() ::
    #{ 'readability' => openapi_inline_response_200_19_readability:openapi_inline_response_200_19_readability()
     }.

encode(#{ 'readability' := Readability
        }) ->
    #{ 'readability' => Readability
     }.
