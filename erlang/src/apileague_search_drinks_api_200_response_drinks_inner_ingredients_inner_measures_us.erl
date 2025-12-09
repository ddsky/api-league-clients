-module(apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures_us() ::
    #{ 'amount' => integer(),
       'unit_short' => binary(),
       'unit_long' => binary()
     }.

encode(#{ 'amount' := Amount,
          'unit_short' := UnitShort,
          'unit_long' := UnitLong
        }) ->
    #{ 'amount' => Amount,
       'unit_short' => UnitShort,
       'unit_long' => UnitLong
     }.
