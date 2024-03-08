-module(apileague_search_royalty_free_images_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_search_royalty_free_images_200_response_images_inner/0]).

-type apileague_search_royalty_free_images_200_response_images_inner() ::
    #{ 'width' => integer(),
       'license' => apileague_search_royalty_free_images_200_response_images_inner_license:apileague_search_royalty_free_images_200_response_images_inner_license(),
       'thumbnail' => binary(),
       'id' => binary(),
       'url' => binary(),
       'height' => integer()
     }.

encode(#{ 'width' := Width,
          'license' := License,
          'thumbnail' := Thumbnail,
          'id' := Id,
          'url' := Url,
          'height' := Height
        }) ->
    #{ 'width' => Width,
       'license' => License,
       'thumbnail' => Thumbnail,
       'id' => Id,
       'url' => Url,
       'height' => Height
     }.
