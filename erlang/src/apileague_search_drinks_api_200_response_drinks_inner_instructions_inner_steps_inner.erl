-module(apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner() ::
    #{ 'number' => integer(),
       'step' => binary(),
       'ingredients' => list(),
       'equipment' => list()
     }.

encode(#{ 'number' := Number,
          'step' := Step,
          'ingredients' := Ingredients,
          'equipment' := Equipment
        }) ->
    #{ 'number' => Number,
       'step' => Step,
       'ingredients' => Ingredients,
       'equipment' => Equipment
     }.
