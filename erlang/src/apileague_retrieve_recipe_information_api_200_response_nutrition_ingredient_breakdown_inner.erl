-module(apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner/0]).

-type apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner() ::
    #{ 'name' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'id' => integer(),
       'nutrients' => list()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'id' := Id,
          'nutrients' := Nutrients
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'id' => Id,
       'nutrients' => Nutrients
     }.
