-module(apileague_extract_news_api_200_response_videos_inner).

-export([encode/1]).

-export_type([apileague_extract_news_api_200_response_videos_inner/0]).

-type apileague_extract_news_api_200_response_videos_inner() ::
    #{ 'title' => binary(),
       'url' => binary(),
       'summary' => binary(),
       'duration' => integer(),
       'thumbnail' => binary()
     }.

encode(#{ 'title' := Title,
          'url' := Url,
          'summary' := Summary,
          'duration' := Duration,
          'thumbnail' := Thumbnail
        }) ->
    #{ 'title' => Title,
       'url' => Url,
       'summary' => Summary,
       'duration' => Duration,
       'thumbnail' => Thumbnail
     }.
