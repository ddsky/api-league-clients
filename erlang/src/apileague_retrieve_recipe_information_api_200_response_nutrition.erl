-module(apileague_retrieve_recipe_information_api_200_response_nutrition).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_nutrition/0]).

-type apileague_retrieve_recipe_information_api_200_response_nutrition() ::
    #{ 'nutrients' => list(),
       'properties' => list(),
       'flavonoids' => list(),
       'ingredient_breakdown' => list(),
       'caloric_breakdown' => apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown:apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown(),
       'weight_per_serving' => apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving:apileague_search_drinks_api_200_response_drinks_inner_nutrition_weight_per_serving()
     }.

encode(#{ 'nutrients' := Nutrients,
          'properties' := Properties,
          'flavonoids' := Flavonoids,
          'ingredient_breakdown' := IngredientBreakdown,
          'caloric_breakdown' := CaloricBreakdown,
          'weight_per_serving' := WeightPerServing
        }) ->
    #{ 'nutrients' => Nutrients,
       'properties' => Properties,
       'flavonoids' => Flavonoids,
       'ingredient_breakdown' => IngredientBreakdown,
       'caloric_breakdown' => CaloricBreakdown,
       'weight_per_serving' => WeightPerServing
     }.
