-module(apileague_search_games_api_200_response_filter_options_inner_values_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_filter_options_inner_values_inner/0]).

-type apileague_search_games_api_200_response_filter_options_inner_values_inner() ::
    #{ 'name' => binary(),
       'count' => integer(),
       'key' => binary()
     }.

encode(#{ 'name' := Name,
          'count' := Count,
          'key' := Key
        }) ->
    #{ 'name' => Name,
       'count' => Count,
       'key' => Key
     }.
