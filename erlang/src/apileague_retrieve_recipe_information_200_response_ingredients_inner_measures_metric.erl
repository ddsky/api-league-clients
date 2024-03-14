-module(apileague_retrieve_recipe_information_200_response_ingredients_inner_measures_metric).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_ingredients_inner_measures_metric/0]).

-type apileague_retrieve_recipe_information_200_response_ingredients_inner_measures_metric() ::
    #{ 'unit_short' => binary(),
       'amount' => integer(),
       'unit_long' => binary()
     }.

encode(#{ 'unit_short' := UnitShort,
          'amount' := Amount,
          'unit_long' := UnitLong
        }) ->
    #{ 'unit_short' => UnitShort,
       'amount' => Amount,
       'unit_long' => UnitLong
     }.
