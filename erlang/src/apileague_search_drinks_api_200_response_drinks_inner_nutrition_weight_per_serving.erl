-module(apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving() ::
    #{ 'amount' => integer(),
       'unit' => binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
