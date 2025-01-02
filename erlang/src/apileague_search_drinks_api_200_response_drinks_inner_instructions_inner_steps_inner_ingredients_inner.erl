-module(apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_instructions_inner_steps_inner_ingredients_inner() ::
    #{ 'name' => binary(),
       'image' => binary(),
       'id' => integer()
     }.

encode(#{ 'name' := Name,
          'image' := Image,
          'id' := Id
        }) ->
    #{ 'name' => Name,
       'image' => Image,
       'id' => Id
     }.
