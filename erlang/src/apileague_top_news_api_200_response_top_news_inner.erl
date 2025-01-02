-module(apileague_top_news_api_200_response_top_news_inner).

-export([encode/1]).

-export_type([apileague_top_news_api_200_response_top_news_inner/0]).

-type apileague_top_news_api_200_response_top_news_inner() ::
    #{ 'news' => list()
     }.

encode(#{ 'news' := News
        }) ->
    #{ 'news' => News
     }.
