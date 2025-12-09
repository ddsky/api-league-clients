-module(apileague_retrieve_game_by_id_200_response_offers_inner).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_offers_inner/0]).

-type apileague_retrieve_game_by_id_200_response_offers_inner() ::
    #{ 'price' => apileague_retrieve_game_by_id_200_response_offers_inner_price:apileague_retrieve_game_by_id_200_response_offers_inner_price(),
       'store_name' => binary(),
       'platform' => binary(),
       'title' => binary(),
       'url' => binary()
     }.

encode(#{ 'price' := Price,
          'store_name' := StoreName,
          'platform' := Platform,
          'title' := Title,
          'url' := Url
        }) ->
    #{ 'price' => Price,
       'store_name' => StoreName,
       'platform' => Platform,
       'title' => Title,
       'url' => Url
     }.
