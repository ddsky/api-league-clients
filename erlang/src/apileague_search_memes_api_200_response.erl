-module(apileague_search_memes_api_200_response).

-export([encode/1]).

-export_type([apileague_search_memes_api_200_response/0]).

-type apileague_search_memes_api_200_response() ::
    #{ 'memes' => list(),
       'available' => integer()
     }.

encode(#{ 'memes' := Memes,
          'available' := Available
        }) ->
    #{ 'memes' => Memes,
       'available' => Available
     }.
