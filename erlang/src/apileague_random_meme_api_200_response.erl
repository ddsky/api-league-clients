-module(apileague_random_meme_api_200_response).

-export([encode/1]).

-export_type([apileague_random_meme_api_200_response/0]).

-type apileague_random_meme_api_200_response() ::
    #{ 'description' => binary(),
       'url' => binary(),
       'type' => binary(),
       'width' => integer(),
       'height' => integer(),
       'ratio' => integer()
     }.

encode(#{ 'description' := Description,
          'url' := Url,
          'type' := Type,
          'width' := Width,
          'height' := Height,
          'ratio' := Ratio
        }) ->
    #{ 'description' => Description,
       'url' => Url,
       'type' => Type,
       'width' => Width,
       'height' => Height,
       'ratio' => Ratio
     }.
