-module(openapi_inline_response_200_4).

-export([encode/1]).

-export_type([openapi_inline_response_200_4/0]).

-type openapi_inline_response_200_4() ::
    #{ 'jokes' => list(),
       'available' => integer()
     }.

encode(#{ 'jokes' := Jokes,
          'available' := Available
        }) ->
    #{ 'jokes' => Jokes,
       'available' => Available
     }.
