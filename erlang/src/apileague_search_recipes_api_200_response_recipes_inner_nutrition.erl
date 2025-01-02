-module(apileague_search_recipes_api_200_response_recipes_inner_nutrition).

-export([encode/1]).

-export_type([apileague_search_recipes_api_200_response_recipes_inner_nutrition/0]).

-type apileague_search_recipes_api_200_response_recipes_inner_nutrition() ::
    #{ 'nutrients' => list()
     }.

encode(#{ 'nutrients' := Nutrients
        }) ->
    #{ 'nutrients' => Nutrients
     }.
