-module(apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_nutrition_caloric_breakdown() ::
    #{ 'percent_carbs' => integer(),
       'percent_protein' => integer(),
       'percent_fat' => integer()
     }.

encode(#{ 'percent_carbs' := PercentCarbs,
          'percent_protein' := PercentProtein,
          'percent_fat' := PercentFat
        }) ->
    #{ 'percent_carbs' => PercentCarbs,
       'percent_protein' => PercentProtein,
       'percent_fat' => PercentFat
     }.
