-module(openapi_inline_response_200_11).

-export([encode/1]).

-export_type([openapi_inline_response_200_11/0]).

-type openapi_inline_response_200_11() ::
    #{ 'title' => binary(),
       'author' => binary(),
       'poem' => binary()
     }.

encode(#{ 'title' := Title,
          'author' := Author,
          'poem' := Poem
        }) ->
    #{ 'title' => Title,
       'author' => Author,
       'poem' => Poem
     }.
