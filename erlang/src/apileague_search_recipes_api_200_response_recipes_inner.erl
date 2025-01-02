-module(apileague_search_recipes_api_200_response_recipes_inner).

-export([encode/1]).

-export_type([apileague_search_recipes_api_200_response_recipes_inner/0]).

-type apileague_search_recipes_api_200_response_recipes_inner() ::
    #{ 'images' => list(),
       'nutrition' => apileague_search_recipes_api_200_response_recipes_inner_nutrition:apileague_search_recipes_api_200_response_recipes_inner_nutrition(),
       'id' => integer(),
       'title' => binary()
     }.

encode(#{ 'images' := Images,
          'nutrition' := Nutrition,
          'id' := Id,
          'title' := Title
        }) ->
    #{ 'images' => Images,
       'nutrition' => Nutrition,
       'id' => Id,
       'title' => Title
     }.
