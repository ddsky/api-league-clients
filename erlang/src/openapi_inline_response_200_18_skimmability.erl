-module(openapi_inline_response_200_18_skimmability).

-export([encode/1]).

-export_type([openapi_inline_response_200_18_skimmability/0]).

-type openapi_inline_response_200_18_skimmability() ::
    #{ 'mainscores' => openapi_inline_response_200_18_skimmability_mainscores:openapi_inline_response_200_18_skimmability_mainscores(),
       'subscores' => openapi_inline_response_200_18_skimmability_subscores:openapi_inline_response_200_18_skimmability_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
