-module(apileague_random_affirmation_api_200_response).

-export([encode/1]).

-export_type([apileague_random_affirmation_api_200_response/0]).

-type apileague_random_affirmation_api_200_response() ::
    #{ 'image' => binary(),
       'affirmation' => binary()
     }.

encode(#{ 'image' := Image,
          'affirmation' := Affirmation
        }) ->
    #{ 'image' => Image,
       'affirmation' => Affirmation
     }.
