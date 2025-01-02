-module(apileague_random_trivia_api_200_response).

-export([encode/1]).

-export_type([apileague_random_trivia_api_200_response/0]).

-type apileague_random_trivia_api_200_response() ::
    #{ 'trivia' => binary()
     }.

encode(#{ 'trivia' := Trivia
        }) ->
    #{ 'trivia' => Trivia
     }.
