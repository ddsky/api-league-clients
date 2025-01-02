-module(apileague_search_jokes_api_200_response_jokes_inner).

-export([encode/1]).

-export_type([apileague_search_jokes_api_200_response_jokes_inner/0]).

-type apileague_search_jokes_api_200_response_jokes_inner() ::
    #{ 'joke' => binary()
     }.

encode(#{ 'joke' := Joke
        }) ->
    #{ 'joke' => Joke
     }.
