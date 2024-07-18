-module(apileague_search_drinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner/0]).

-type apileague_search_drinks_200_response_drinks_inner_nutrition_ingredient_breakdown_inner_nutrients_inner() ::
    #{ 'name' => binary(),
       'percent_of_daily_needs' => integer(),
       'amount' => integer(),
       'unit' => binary()
     }.

encode(#{ 'name' := Name,
          'percent_of_daily_needs' := PercentOfDailyNeeds,
          'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'name' => Name,
       'percent_of_daily_needs' => PercentOfDailyNeeds,
       'amount' => Amount,
       'unit' => Unit
     }.
