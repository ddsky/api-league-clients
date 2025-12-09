-module(apileague_search_royalty_free_images_api_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_search_royalty_free_images_api_200_response_images_inner/0]).

-type apileague_search_royalty_free_images_api_200_response_images_inner() ::
    #{ 'url' => binary(),
       'thumbnail' => binary(),
       'width' => integer(),
       'height' => integer(),
       'license' => apileague_search_royalty_free_images_api_200_response_images_inner_license:apileague_search_royalty_free_images_api_200_response_images_inner_license(),
       'id' => binary()
     }.

encode(#{ 'url' := Url,
          'thumbnail' := Thumbnail,
          'width' := Width,
          'height' := Height,
          'license' := License,
          'id' := Id
        }) ->
    #{ 'url' => Url,
       'thumbnail' => Thumbnail,
       'width' => Width,
       'height' => Height,
       'license' => License,
       'id' => Id
     }.
