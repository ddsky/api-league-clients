-module(apileague_retrieve_recipe_information_api_200_response_nutrition).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_nutrition/0]).

-type apileague_retrieve_recipe_information_api_200_response_nutrition() ::
    #{ 'weight_per_serving' => apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving:apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving(),
       'caloric_breakdown' => apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown:apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown(),
       'flavonoids' => list(),
       'ingredient_breakdown' => list(),
       'properties' => list(),
       'nutrients' => list()
     }.

encode(#{ 'weight_per_serving' := WeightPerServing,
          'caloric_breakdown' := CaloricBreakdown,
          'flavonoids' := Flavonoids,
          'ingredient_breakdown' := IngredientBreakdown,
          'properties' := Properties,
          'nutrients' := Nutrients
        }) ->
    #{ 'weight_per_serving' => WeightPerServing,
       'caloric_breakdown' => CaloricBreakdown,
       'flavonoids' => Flavonoids,
       'ingredient_breakdown' => IngredientBreakdown,
       'properties' => Properties,
       'nutrients' => Nutrients
     }.
