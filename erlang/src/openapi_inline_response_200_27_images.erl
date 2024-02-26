-module(openapi_inline_response_200_27_images).

-export([encode/1]).

-export_type([openapi_inline_response_200_27_images/0]).

-type openapi_inline_response_200_27_images() ::
    #{ 'width' => integer(),
       'license' => openapi_inline_response_200_27_license:openapi_inline_response_200_27_license(),
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
