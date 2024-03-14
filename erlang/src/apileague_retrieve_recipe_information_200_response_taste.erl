-module(apileague_retrieve_recipe_information_200_response_taste).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_taste/0]).

-type apileague_retrieve_recipe_information_200_response_taste() ::
    #{ 'fattiness' => integer(),
       'spiciness' => integer(),
       'saltiness' => integer(),
       'bitterness' => integer(),
       'savoriness' => integer(),
       'sweetness' => integer(),
       'sourness' => integer()
     }.

encode(#{ 'fattiness' := Fattiness,
          'spiciness' := Spiciness,
          'saltiness' := Saltiness,
          'bitterness' := Bitterness,
          'savoriness' := Savoriness,
          'sweetness' := Sweetness,
          'sourness' := Sourness
        }) ->
    #{ 'fattiness' => Fattiness,
       'spiciness' => Spiciness,
       'saltiness' => Saltiness,
       'bitterness' => Bitterness,
       'savoriness' => Savoriness,
       'sweetness' => Sweetness,
       'sourness' => Sourness
     }.
