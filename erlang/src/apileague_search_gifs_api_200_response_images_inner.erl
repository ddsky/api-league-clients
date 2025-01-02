-module(apileague_search_gifs_api_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_search_gifs_api_200_response_images_inner/0]).

-type apileague_search_gifs_api_200_response_images_inner() ::
    #{ 'width' => integer(),
       'url' => binary(),
       'height' => integer()
     }.

encode(#{ 'width' := Width,
          'url' := Url,
          'height' := Height
        }) ->
    #{ 'width' => Width,
       'url' => Url,
       'height' => Height
     }.
