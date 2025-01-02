-module(apileague_search_royalty_free_images_api_200_response).

-export([encode/1]).

-export_type([apileague_search_royalty_free_images_api_200_response/0]).

-type apileague_search_royalty_free_images_api_200_response() ::
    #{ 'images' => list()
     }.

encode(#{ 'images' := Images
        }) ->
    #{ 'images' => Images
     }.
