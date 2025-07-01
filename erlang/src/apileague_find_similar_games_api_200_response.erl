-module(apileague_find_similar_games_api_200_response).

-export([encode/1]).

-export_type([apileague_find_similar_games_api_200_response/0]).

-type apileague_find_similar_games_api_200_response() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
