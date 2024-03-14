-module(apileague_compute_nutrition_200_response).

-export([encode/1]).

-export_type([apileague_compute_nutrition_200_response/0]).

-type apileague_compute_nutrition_200_response() ::
    #{ 'nutrients' => list(),
       'properties' => list(),
       'flavonoids' => list(),
       'ingredient_breakdown' => list(),
       'caloric_breakdown' => apileague_retrieve_recipe_information_200_response_nutrition_caloric_breakdown:apileague_retrieve_recipe_information_200_response_nutrition_caloric_breakdown(),
       'weight_per_serving' => apileague_retrieve_recipe_information_200_response_nutrition_weight_per_serving:apileague_retrieve_recipe_information_200_response_nutrition_weight_per_serving()
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
