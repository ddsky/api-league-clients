-module(apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us() ::
    #{ 'unit_short' => binary(),
       'amount' => integer(),
       'unit_long' => binary()
     }.

encode(#{ 'unit_short' := UnitShort,
          'amount' := Amount,
          'unit_long' := UnitLong
        }) ->
    #{ 'unit_short' => UnitShort,
       'amount' => Amount,
       'unit_long' => UnitLong
     }.