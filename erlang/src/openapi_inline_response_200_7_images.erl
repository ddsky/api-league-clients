-module(openapi_inline_response_200_7_images).

-export([encode/1]).

-export_type([openapi_inline_response_200_7_images/0]).

-type openapi_inline_response_200_7_images() ::
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
