-module(openapi_inline_response_200_18_readability).

-export([encode/1]).

-export_type([openapi_inline_response_200_18_readability/0]).

-type openapi_inline_response_200_18_readability() ::
    #{ 'mainscores' => openapi_inline_response_200_18_readability_mainscores:openapi_inline_response_200_18_readability_mainscores(),
       'subscores' => openapi_inline_response_200_18_readability_subscores:openapi_inline_response_200_18_readability_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
