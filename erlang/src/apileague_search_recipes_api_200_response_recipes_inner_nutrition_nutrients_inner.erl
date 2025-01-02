-module(apileague_search_recipes_api_200_response_recipes_inner_nutrition_nutrients_inner).

-export([encode/1]).

-export_type([apileague_search_recipes_api_200_response_recipes_inner_nutrition_nutrients_inner/0]).

-type apileague_search_recipes_api_200_response_recipes_inner_nutrition_nutrients_inner() ::
    #{ 'name' => binary(),
       'amount' => integer(),
       'unit' => binary()
     }.

encode(#{ 'name' := Name,
          'amount' := Amount,
          'unit' := Unit
        }) ->
    #{ 'name' => Name,
       'amount' => Amount,
       'unit' => Unit
     }.
