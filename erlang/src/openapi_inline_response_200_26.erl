-module(openapi_inline_response_200_26).

-export([encode/1]).

-export_type([openapi_inline_response_200_26/0]).

-type openapi_inline_response_200_26() ::
    #{ 'original' => binary(),
       'plural' => binary()
     }.

encode(#{ 'original' := Original,
          'plural' := Plural
        }) ->
    #{ 'original' => Original,
       'plural' => Plural
     }.
