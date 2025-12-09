-module(apileague_top_news_api_200_response_top_news_inner_news_inner).

-export([encode/1]).

-export_type([apileague_top_news_api_200_response_top_news_inner_news_inner/0]).

-type apileague_top_news_api_200_response_top_news_inner_news_inner() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'text' => binary(),
       'summary' => binary(),
       'url' => binary(),
       'image' => binary(),
       'publish_date' => binary(),
       'authors' => list()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'text' := Text,
          'summary' := Summary,
          'url' := Url,
          'image' := Image,
          'publish_date' := PublishDate,
          'authors' := Authors
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'text' => Text,
       'summary' => Summary,
       'url' => Url,
       'image' => Image,
       'publish_date' => PublishDate,
       'authors' => Authors
     }.
