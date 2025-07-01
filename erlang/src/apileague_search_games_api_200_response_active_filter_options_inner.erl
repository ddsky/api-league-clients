-module(apileague_search_games_api_200_response_active_filter_options_inner).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response_active_filter_options_inner/0]).

-type apileague_search_games_api_200_response_active_filter_options_inner() ::
    #{ 'key' => binary(),
       'connection' => binary(),
       'values' => list()
     }.

encode(#{ 'key' := Key,
          'connection' := Connection,
          'values' := Values
        }) ->
    #{ 'key' => Key,
       'connection' => Connection,
       'values' => Values
     }.
