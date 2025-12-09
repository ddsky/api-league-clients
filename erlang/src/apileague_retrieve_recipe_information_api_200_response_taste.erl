-module(apileague_retrieve_recipe_information_api_200_response_taste).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_taste/0]).

-type apileague_retrieve_recipe_information_api_200_response_taste() ::
    #{ 'sweetness' => integer(),
       'saltiness' => integer(),
       'sourness' => integer(),
       'bitterness' => integer(),
       'savoriness' => integer(),
       'fattiness' => integer(),
       'spiciness' => integer()
     }.

encode(#{ 'sweetness' := Sweetness,
          'saltiness' := Saltiness,
          'sourness' := Sourness,
          'bitterness' := Bitterness,
          'savoriness' := Savoriness,
          'fattiness' := Fattiness,
          'spiciness' := Spiciness
        }) ->
    #{ 'sweetness' => Sweetness,
       'saltiness' => Saltiness,
       'sourness' => Sourness,
       'bitterness' => Bitterness,
       'savoriness' => Savoriness,
       'fattiness' => Fattiness,
       'spiciness' => Spiciness
     }.
