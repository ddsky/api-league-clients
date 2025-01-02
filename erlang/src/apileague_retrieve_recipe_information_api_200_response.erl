-module(apileague_retrieve_recipe_information_api_200_response).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response/0]).

-type apileague_retrieve_recipe_information_api_200_response() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'servings' => integer(),
       'images' => list(),
       'dietary_properties' => apileague_retrieve_recipe_information_api_200_response_dietary_properties:apileague_retrieve_recipe_information_api_200_response_dietary_properties(),
       'price_per_serving' => integer(),
       'times' => apileague_retrieve_recipe_information_api_200_response_times:apileague_retrieve_recipe_information_api_200_response_times(),
       'nutrition' => apileague_retrieve_recipe_information_api_200_response_nutrition:apileague_retrieve_recipe_information_api_200_response_nutrition(),
       'taste' => apileague_retrieve_recipe_information_api_200_response_taste:apileague_retrieve_recipe_information_api_200_response_taste(),
       'cuisines' => list(),
       'meal_types' => list(),
       'occasions' => list(),
       'ingredients' => list(),
       'instructions' => list(),
       'credits' => apileague_retrieve_recipe_information_api_200_response_credits:apileague_retrieve_recipe_information_api_200_response_credits(),
       'scores' => apileague_retrieve_recipe_information_api_200_response_scores:apileague_retrieve_recipe_information_api_200_response_scores()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'servings' := Servings,
          'images' := Images,
          'dietary_properties' := DietaryProperties,
          'price_per_serving' := PricePerServing,
          'times' := Times,
          'nutrition' := Nutrition,
          'taste' := Taste,
          'cuisines' := Cuisines,
          'meal_types' := MealTypes,
          'occasions' := Occasions,
          'ingredients' := Ingredients,
          'instructions' := Instructions,
          'credits' := Credits,
          'scores' := Scores
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'servings' => Servings,
       'images' => Images,
       'dietary_properties' => DietaryProperties,
       'price_per_serving' => PricePerServing,
       'times' => Times,
       'nutrition' => Nutrition,
       'taste' => Taste,
       'cuisines' => Cuisines,
       'meal_types' => MealTypes,
       'occasions' => Occasions,
       'ingredients' => Ingredients,
       'instructions' => Instructions,
       'credits' => Credits,
       'scores' => Scores
     }.
