-module(openapi_inline_response_200_24).

-export([encode/1]).

-export_type([openapi_inline_response_200_24/0]).

-type openapi_inline_response_200_24() ::
    #{ 'original' => binary(),
       'stemmed' => binary()
     }.

encode(#{ 'original' := Original,
          'stemmed' := Stemmed
        }) ->
    #{ 'original' => Original,
       'stemmed' => Stemmed
     }.
