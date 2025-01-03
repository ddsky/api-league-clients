-module(apileague_extract_news_api_200_response_videos_inner).

-export([encode/1]).

-export_type([apileague_extract_news_api_200_response_videos_inner/0]).

-type apileague_extract_news_api_200_response_videos_inner() ::
    #{ 'summary' => binary(),
       'duration' => integer(),
       'thumbnail' => binary(),
       'title' => binary(),
       'url' => binary()
     }.

encode(#{ 'summary' := Summary,
          'duration' := Duration,
          'thumbnail' := Thumbnail,
          'title' := Title,
          'url' := Url
        }) ->
    #{ 'summary' => Summary,
       'duration' => Duration,
       'thumbnail' => Thumbnail,
       'title' => Title,
       'url' => Url
     }.
