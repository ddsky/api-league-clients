-module(apileague_search_games_api_200_response_active_filter_options_inner_values_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_active_filter_options_inner_values_inner/0]).

-type apileague_search_games_api_200_response_active_filter_options_inner_values_inner() ::
    #{ 'match' => binary(),
       'value' => binary()
     }.

encode(#{ 'match' := Match,
          'value' := Value
        }) ->
    #{ 'match' => Match,
       'value' => Value
     }.
