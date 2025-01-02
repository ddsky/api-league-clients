-module(apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner() ::
    #{ 'number' => integer(),
       'ingredients' => list(),
       'equipment' => list(),
       'step' => binary()
     }.

encode(#{ 'number' := Number,
          'ingredients' := Ingredients,
          'equipment' := Equipment,
          'step' := Step
        }) ->
    #{ 'number' => Number,
       'ingredients' => Ingredients,
       'equipment' => Equipment,
       'step' => Step
     }.
