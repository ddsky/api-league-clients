-module(apileague_search_drinks_api_200_response_drinks_inner_instructions_inner).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_instructions_inner/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_instructions_inner() ::
    #{ 'name' => binary(),
       'steps' => list()
     }.

encode(#{ 'name' := Name,
          'steps' := Steps
        }) ->
    #{ 'name' => Name,
       'steps' => Steps
     }.
