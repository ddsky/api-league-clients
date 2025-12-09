-module(apileague_search_gifs_api_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_search_gifs_api_200_response_images_inner/0]).

-type apileague_search_gifs_api_200_response_images_inner() ::
    #{ 'url' => binary(),
       'width' => integer(),
       'height' => integer()
     }.

encode(#{ 'url' := Url,
          'width' := Width,
          'height' := Height
        }) ->
    #{ 'url' => Url,
       'width' => Width,
       'height' => Height
     }.
