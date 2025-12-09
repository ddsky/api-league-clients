-module(apileague_extract_news_api_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_extract_news_api_200_response_images_inner/0]).

-type apileague_extract_news_api_200_response_images_inner() ::
    #{ 'title' => binary(),
       'url' => binary(),
       'width' => integer(),
       'height' => integer()
     }.

encode(#{ 'title' := Title,
          'url' := Url,
          'width' := Width,
          'height' := Height
        }) ->
    #{ 'title' => Title,
       'url' => Url,
       'width' => Width,
       'height' => Height
     }.
