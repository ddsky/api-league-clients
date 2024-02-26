-module(openapi_inline_response_200_5).

-export([encode/1]).

-export_type([openapi_inline_response_200_5/0]).

-type openapi_inline_response_200_5() ::
    #{ 'memes' => list(),
       'available' => integer()
     }.

encode(#{ 'memes' := Memes,
          'available' := Available
        }) ->
    #{ 'memes' => Memes,
       'available' => Available
     }.
