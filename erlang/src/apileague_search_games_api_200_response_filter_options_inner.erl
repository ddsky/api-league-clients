-module(apileague_search_games_api_200_response_filter_options_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_filter_options_inner/0]).

-type apileague_search_games_api_200_response_filter_options_inner() ::
    #{ 'name' => binary(),
       'key' => binary(),
       'values' => list(),
       'filter_type' => binary(),
       'filter_connection' => binary()
     }.

encode(#{ 'name' := Name,
          'key' := Key,
          'values' := Values,
          'filter_type' := FilterType,
          'filter_connection' := FilterConnection
        }) ->
    #{ 'name' => Name,
       'key' => Key,
       'values' => Values,
       'filter_type' => FilterType,
       'filter_connection' => FilterConnection
     }.
