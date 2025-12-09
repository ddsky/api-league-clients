-module(apileague_search_games_api_200_response_results_inner_rating).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_results_inner_rating/0]).

-type apileague_search_games_api_200_response_results_inner_rating() ::
    #{ 'mean' => integer(),
       'count' => integer()
     }.

encode(#{ 'mean' := Mean,
          'count' := Count
        }) ->
    #{ 'mean' => Mean,
       'count' => Count
     }.
