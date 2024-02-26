-module(openapi_inline_response_200_19_interestingness).

-export([encode/1]).

-export_type([openapi_inline_response_200_19_interestingness/0]).

-type openapi_inline_response_200_19_interestingness() ::
    #{ 'mainscores' => openapi_inline_response_200_19_skimmability_mainscores:openapi_inline_response_200_19_skimmability_mainscores(),
       'subscores' => openapi_inline_response_200_19_interestingness_subscores:openapi_inline_response_200_19_interestingness_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
