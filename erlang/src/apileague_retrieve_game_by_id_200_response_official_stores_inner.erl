-module(apileague_retrieve_game_by_id_200_response_official_stores_inner).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_official_stores_inner/0]).

-type apileague_retrieve_game_by_id_200_response_official_stores_inner() ::
    #{ 'source' => binary(),
       'url' => binary()
     }.

encode(#{ 'source' := Source,
          'url' := Url
        }) ->
    #{ 'source' => Source,
       'url' => Url
     }.
