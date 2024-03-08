-module(apileague_search_jokes_200_response).

-export([encode/1]).

-export_type([apileague_search_jokes_200_response/0]).

-type apileague_search_jokes_200_response() ::
    #{ 'jokes' => list(),
       'available' => integer()
     }.

encode(#{ 'jokes' := Jokes,
          'available' := Available
        }) ->
    #{ 'jokes' => Jokes,
       'available' => Available
     }.
