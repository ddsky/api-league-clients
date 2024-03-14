-module(apileague_retrieve_recipe_information_200_response_ingredients_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_ingredients_inner/0]).

-type apileague_retrieve_recipe_information_200_response_ingredients_inner() ::
    #{ 'image' => binary(),
       'name_clean' => binary(),
       'amount' => integer(),
       'unit' => binary(),
       'measures' => apileague_retrieve_recipe_information_200_response_ingredients_inner_measures:apileague_retrieve_recipe_information_200_response_ingredients_inner_measures(),
       'original' => binary(),
       'meta' => list(),
       'original_name' => binary(),
       'name' => binary(),
       'id' => integer(),
       'aisle' => binary(),
       'consistency' => binary()
     }.

encode(#{ 'image' := Image,
          'name_clean' := NameClean,
          'amount' := Amount,
          'unit' := Unit,
          'measures' := Measures,
          'original' := Original,
          'meta' := Meta,
          'original_name' := OriginalName,
          'name' := Name,
          'id' := Id,
          'aisle' := Aisle,
          'consistency' := Consistency
        }) ->
    #{ 'image' => Image,
       'name_clean' => NameClean,
       'amount' => Amount,
       'unit' => Unit,
       'measures' => Measures,
       'original' => Original,
       'meta' => Meta,
       'original_name' => OriginalName,
       'name' => Name,
       'id' => Id,
       'aisle' => Aisle,
       'consistency' => Consistency
     }.
