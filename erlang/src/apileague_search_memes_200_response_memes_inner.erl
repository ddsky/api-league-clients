-module(apileague_search_memes_200_response_memes_inner).

-export([encode/1]).

-export_type([apileague_search_memes_200_response_memes_inner/0]).

-type apileague_search_memes_200_response_memes_inner() ::
    #{ 'type' => binary(),
       'description' => binary(),
       'url' => binary()
     }.

encode(#{ 'type' := Type,
          'description' := Description,
          'url' := Url
        }) ->
    #{ 'type' => Type,
       'description' => Description,
       'url' => Url
     }.
