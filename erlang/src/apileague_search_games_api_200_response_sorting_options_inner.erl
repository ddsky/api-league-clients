-module(apileague_search_games_api_200_response_sorting_options_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_sorting_options_inner/0]).

-type apileague_search_games_api_200_response_sorting_options_inner() ::
    #{ 'name' => binary(),
       'key' => binary(),
       'sort' => binary()
     }.

encode(#{ 'name' := Name,
          'key' := Key,
          'sort' := Sort
        }) ->
    #{ 'name' => Name,
       'key' => Key,
       'sort' => Sort
     }.
