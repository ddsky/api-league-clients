-module(apileague_random_poem_api_200_response).

-export([encode/1]).

-export_type([apileague_random_poem_api_200_response/0]).

-type apileague_random_poem_api_200_response() ::
    #{ 'title' => binary(),
       'author' => binary(),
       'poem' => binary()
     }.

encode(#{ 'title' := Title,
          'author' := Author,
          'poem' := Poem
        }) ->
    #{ 'title' => Title,
       'author' => Author,
       'poem' => Poem
     }.
