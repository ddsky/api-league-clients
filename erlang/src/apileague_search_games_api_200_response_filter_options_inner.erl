-module(apileague_search_games_api_200_response_filter_options_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_filter_options_inner/0]).

-type apileague_search_games_api_200_response_filter_options_inner() ::
    #{ 'name' => binary(),
       'filter_type' => binary(),
       'key' => binary(),
       'values' => list(),
       'filter_connection' => binary()
     }.

encode(#{ 'name' := Name,
          'filter_type' := FilterType,
          'key' := Key,
          'values' := Values,
          'filter_connection' := FilterConnection
        }) ->
    #{ 'name' => Name,
       'filter_type' => FilterType,
       'key' => Key,
       'values' => Values,
       'filter_connection' => FilterConnection
     }.
