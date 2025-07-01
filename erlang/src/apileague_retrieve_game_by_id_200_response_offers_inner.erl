-module(apileague_retrieve_game_by_id_200_response_offers_inner).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_offers_inner/0]).

-type apileague_retrieve_game_by_id_200_response_offers_inner() ::
    #{ 'store_name' => binary(),
       'title' => binary(),
       'price' => apileague_retrieve_game_by_id_200_response_offers_inner_price:apileague_retrieve_game_by_id_200_response_offers_inner_price(),
       'platform' => binary(),
       'url' => binary()
     }.

encode(#{ 'store_name' := StoreName,
          'title' := Title,
          'price' := Price,
          'platform' := Platform,
          'url' := Url
        }) ->
    #{ 'store_name' => StoreName,
       'title' => Title,
       'price' => Price,
       'platform' => Platform,
       'url' => Url
     }.
