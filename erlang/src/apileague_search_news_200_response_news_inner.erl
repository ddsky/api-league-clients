-module(apileague_search_news_200_response_news_inner).

-export([encode/1]).

-export_type([apileague_search_news_200_response_news_inner/0]).

-type apileague_search_news_200_response_news_inner() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'sentiment' => integer(),
       'source_country' => binary(),
       'language' => binary(),
       'id' => integer(),
       'text' => binary(),
       'video' => binary(),
       'title' => binary(),
       'publish_date' => binary(),
       'url' => binary(),
       'authors' => list()
     }.

encode(#{ 'summary' := Summary,
          'image' := Image,
          'sentiment' := Sentiment,
          'source_country' := SourceCountry,
          'language' := Language,
          'id' := Id,
          'text' := Text,
          'video' := Video,
          'title' := Title,
          'publish_date' := PublishDate,
          'url' := Url,
          'authors' := Authors
        }) ->
    #{ 'summary' => Summary,
       'image' => Image,
       'sentiment' => Sentiment,
       'source_country' => SourceCountry,
       'language' => Language,
       'id' => Id,
       'text' => Text,
       'video' => Video,
       'title' => Title,
       'publish_date' => PublishDate,
       'url' => Url,
       'authors' => Authors
     }.
