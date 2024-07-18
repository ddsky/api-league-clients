-module(apileague_search_drinks_200_response_drinks_inner_nutrition_flavonoids_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_200_response_drinks_inner_nutrition_flavonoids_inner/0]).

-type apileague_search_drinks_200_response_drinks_inner_nutrition_flavonoids_inner() ::
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
