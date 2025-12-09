-module(apileague_search_news_api_200_response_news_inner).

-export([encode/1]).

-export_type([apileague_search_news_api_200_response_news_inner/0]).

-type apileague_search_news_api_200_response_news_inner() ::
    #{ 'id' => integer(),
       'title' => binary(),
       'text' => binary(),
       'summary' => binary(),
       'url' => binary(),
       'image' => binary(),
       'video' => binary(),
       'publish_date' => binary(),
       'authors' => list(),
       'category' => binary(),
       'language' => binary(),
       'source_country' => binary(),
       'sentiment' => integer()
     }.

encode(#{ 'id' := Id,
          'title' := Title,
          'text' := Text,
          'summary' := Summary,
          'url' := Url,
          'image' := Image,
          'video' := Video,
          'publish_date' := PublishDate,
          'authors' := Authors,
          'category' := Category,
          'language' := Language,
          'source_country' := SourceCountry,
          'sentiment' := Sentiment
        }) ->
    #{ 'id' => Id,
       'title' => Title,
       'text' => Text,
       'summary' => Summary,
       'url' => Url,
       'image' => Image,
       'video' => Video,
       'publish_date' => PublishDate,
       'authors' => Authors,
       'category' => Category,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
