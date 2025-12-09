-module(apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner() ::
    #{ 'id' => integer(),
       'aisle' => binary(),
       'image' => binary(),
       'consistency' => binary(),
       'name' => binary(),
       'original' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'meta' => list(),
       'measures' => apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures:apileague_search_drinks_api_200_response_drinks_inner_ingredients_inner_measures(),
       'original_name' => binary(),
       'name_clean' => binary()
     }.

encode(#{ 'id' := Id,
          'aisle' := Aisle,
          'image' := Image,
          'consistency' := Consistency,
          'name' := Name,
          'original' := Original,
          'amount' := Amount,
          'unit' := Unit,
          'meta' := Meta,
          'measures' := Measures,
          'original_name' := OriginalName,
          'name_clean' := NameClean
        }) ->
    #{ 'id' => Id,
       'aisle' => Aisle,
       'image' => Image,
       'consistency' => Consistency,
       'name' => Name,
       'original' => Original,
       'amount' => Amount,
       'unit' => Unit,
       'meta' => Meta,
       'measures' => Measures,
       'original_name' => OriginalName,
       'name_clean' => NameClean
     }.
