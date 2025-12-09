-module(apileague_search_memes_api_200_response_memes_inner).

-export([encode/1]).

-export_type([apileague_search_memes_api_200_response_memes_inner/0]).

-type apileague_search_memes_api_200_response_memes_inner() ::
    #{ 'description' => binary(),
       'url' => binary(),
       'type' => binary()
     }.

encode(#{ 'description' := Description,
          'url' := Url,
          'type' := Type
        }) ->
    #{ 'description' => Description,
       'url' => Url,
       'type' => Type
     }.
