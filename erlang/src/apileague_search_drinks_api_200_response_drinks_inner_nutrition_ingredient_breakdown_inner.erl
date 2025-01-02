-module(apileague_search_drinks_api_200_response_drinks_inner_nutrition_ingredient_breakdown_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_nutrition_ingredient_breakdown_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_nutrition_ingredient_breakdown_inner() ::
    #{ 'name' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'id' => integer(),
       'nutrients' => list()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit,
          'id' := Id,
          'nutrients' := Nutrients
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit,
       'id' => Id,
       'nutrients' => Nutrients
     }.
