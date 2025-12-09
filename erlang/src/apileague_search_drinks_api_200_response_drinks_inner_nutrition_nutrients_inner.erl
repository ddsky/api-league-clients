-module(apileague_search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_nutrition_nutrients_inner() ::
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
