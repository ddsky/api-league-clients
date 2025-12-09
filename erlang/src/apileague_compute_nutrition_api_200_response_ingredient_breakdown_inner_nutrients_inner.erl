-module(apileague_compute_nutrition_api_200_response_ingredient_breakdown_inner_nutrients_inner).

-export([encode/1]).

-export_type([apileague_compute_nutrition_api_200_response_ingredient_breakdown_inner_nutrients_inner/0]).

-type apileague_compute_nutrition_api_200_response_ingredient_breakdown_inner_nutrients_inner() ::
    #{ 'name' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'percent_of_daily_needs' => integer()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'percent_of_daily_needs' := PercentOfDailyNeeds
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'percent_of_daily_needs' => PercentOfDailyNeeds
     }.
