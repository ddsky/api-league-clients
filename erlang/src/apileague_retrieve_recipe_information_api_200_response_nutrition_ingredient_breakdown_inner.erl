-module(apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner/0]).

-type apileague_retrieve_recipe_information_api_200_response_nutrition_ingredient_breakdown_inner() ::
    #{ 'id' => integer(),
       'name' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'nutrients' => list()
     }.

encode(#{ 'id' := Id,
          'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'nutrients' := Nutrients
        }) ->
    #{ 'id' => Id,
       'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'nutrients' => Nutrients
     }.
