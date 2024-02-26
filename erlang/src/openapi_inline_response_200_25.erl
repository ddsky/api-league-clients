-module(openapi_inline_response_200_25).

-export([encode/1]).

-export_type([openapi_inline_response_200_25/0]).

-type openapi_inline_response_200_25() ::
    #{ 'original' => binary(),
       'singular' => binary()
     }.

encode(#{ 'original' := Original,
          'singular' := Singular
        }) ->
    #{ 'original' => Original,
       'singular' => Singular
     }.
