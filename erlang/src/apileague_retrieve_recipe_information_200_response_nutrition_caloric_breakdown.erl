-module(apileague_retrieve_recipe_information_200_response_nutrition_caloric_breakdown).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_nutrition_caloric_breakdown/0]).

-type apileague_retrieve_recipe_information_200_response_nutrition_caloric_breakdown() ::
    #{ 'percent_fat' => integer(),
       'percent_carbs' => integer(),
       'percent_protein' => integer()
     }.

encode(#{ 'percent_fat' := PercentFat,
          'percent_carbs' := PercentCarbs,
          'percent_protein' := PercentProtein
        }) ->
    #{ 'percent_fat' => PercentFat,
       'percent_carbs' => PercentCarbs,
       'percent_protein' => PercentProtein
     }.
