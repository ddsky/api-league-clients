-module(apileague_retrieve_game_by_id_200_response_offers_inner_price).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_offers_inner_price/0]).

-type apileague_retrieve_game_by_id_200_response_offers_inner_price() ::
    #{ 'currency' => binary(),
       'discount_percent' => integer(),
       'value' => integer(),
       'initial' => integer()
     }.

encode(#{ 'currency' := Currency,
          'discount_percent' := DiscountPercent,
          'value' := Value,
          'initial' := Initial
        }) ->
    #{ 'currency' => Currency,
       'discount_percent' => DiscountPercent,
       'value' => Value,
       'initial' => Initial
     }.
