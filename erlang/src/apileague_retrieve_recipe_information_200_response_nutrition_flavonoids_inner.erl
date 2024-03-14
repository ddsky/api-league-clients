-module(apileague_retrieve_recipe_information_200_response_nutrition_flavonoids_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_nutrition_flavonoids_inner/0]).

-type apileague_retrieve_recipe_information_200_response_nutrition_flavonoids_inner() ::
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
