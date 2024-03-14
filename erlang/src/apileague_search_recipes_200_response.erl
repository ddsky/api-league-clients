-module(apileague_search_recipes_200_response).

-export([encode/1]).

-export_type([apileague_search_recipes_200_response/0]).

-type apileague_search_recipes_200_response() ::
    #{ 'offset' => integer(),
       'number' => integer(),
       'recipes' => list(),
       'total_results' => integer()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'recipes' := Recipes,
          'total_results' := TotalResults
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'recipes' => Recipes,
       'total_results' => TotalResults
     }.
