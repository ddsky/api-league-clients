-module(openapi_inline_response_200_19_style).

-export([encode/1]).

-export_type([openapi_inline_response_200_19_style/0]).

-type openapi_inline_response_200_19_style() ::
    #{ 'mainscores' => openapi_inline_response_200_19_readability_mainscores:openapi_inline_response_200_19_readability_mainscores(),
       'subscores' => openapi_inline_response_200_19_style_subscores:openapi_inline_response_200_19_style_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
