-module(apileague_random_life_hack_api_200_response).

-export([encode/1]).

-export_type([apileague_random_life_hack_api_200_response/0]).

-type apileague_random_life_hack_api_200_response() ::
    #{ 'title' => binary(),
       'description' => binary()
     }.

encode(#{ 'title' := Title,
          'description' := Description
        }) ->
    #{ 'title' => Title,
       'description' => Description
     }.
