-module(apileague_extract_news_api_200_response_images_inner).

-export([encode/1]).

-export_type([apileague_extract_news_api_200_response_images_inner/0]).

-type apileague_extract_news_api_200_response_images_inner() ::
    #{ 'width' => integer(),
       'title' => binary(),
       'url' => binary(),
       'height' => integer()
     }.

encode(#{ 'width' := Width,
          'title' := Title,
          'url' := Url,
          'height' := Height
        }) ->
    #{ 'width' => Width,
       'title' => Title,
       'url' => Url,
       'height' => Height
     }.
