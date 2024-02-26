-module(openapi_inline_response_200_19_skimmability).

-export([encode/1]).

-export_type([openapi_inline_response_200_19_skimmability/0]).

-type openapi_inline_response_200_19_skimmability() ::
    #{ 'mainscores' => openapi_inline_response_200_19_skimmability_mainscores:openapi_inline_response_200_19_skimmability_mainscores(),
       'subscores' => openapi_inline_response_200_19_skimmability_subscores:openapi_inline_response_200_19_skimmability_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
