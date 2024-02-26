-module(openapi_inline_response_200_4_jokes).

-export([encode/1]).

-export_type([openapi_inline_response_200_4_jokes/0]).

-type openapi_inline_response_200_4_jokes() ::
    #{ 'joke' => binary()
     }.

encode(#{ 'joke' := Joke
        }) ->
    #{ 'joke' => Joke
     }.
