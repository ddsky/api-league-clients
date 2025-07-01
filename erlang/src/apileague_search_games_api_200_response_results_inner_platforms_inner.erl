-module(apileague_search_games_api_200_response_results_inner_platforms_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_results_inner_platforms_inner/0]).

-type apileague_search_games_api_200_response_results_inner_platforms_inner() ::
    #{ 'name' => binary(),
       'value' => binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
