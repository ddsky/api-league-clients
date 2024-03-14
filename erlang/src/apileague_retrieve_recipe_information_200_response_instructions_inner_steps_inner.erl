-module(apileague_retrieve_recipe_information_200_response_instructions_inner_steps_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_instructions_inner_steps_inner/0]).

-type apileague_retrieve_recipe_information_200_response_instructions_inner_steps_inner() ::
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
