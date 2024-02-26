-module(openapi_inline_response_200_10).

-export([encode/1]).

-export_type([openapi_inline_response_200_10/0]).

-type openapi_inline_response_200_10() ::
    #{ 'author' => binary(),
       'quote' => binary()
     }.

encode(#{ 'author' := Author,
          'quote' := Quote
        }) ->
    #{ 'author' => Author,
       'quote' => Quote
     }.
