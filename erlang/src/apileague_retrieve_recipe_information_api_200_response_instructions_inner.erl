-module(apileague_retrieve_recipe_information_api_200_response_instructions_inner).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_api_200_response_instructions_inner/0]).

-type apileague_retrieve_recipe_information_api_200_response_instructions_inner() ::
    #{ 'name' => binary(),
       'steps' => list()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
