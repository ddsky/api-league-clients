-module(apileague_retrieve_recipe_information_200_response_nutrition_weight_per_serving).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_nutrition_weight_per_serving/0]).

-type apileague_retrieve_recipe_information_200_response_nutrition_weight_per_serving() ::
    #{ 'amount' => integer(),
       'unit' => binary()
     }.

encode(#{ 'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'amount' => Amount,
       'unit' => Unit
     }.
