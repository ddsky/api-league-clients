-module(openapi_inline_response_200_2_news).

-export([encode/1]).

-export_type([openapi_inline_response_200_2_news/0]).

-type openapi_inline_response_200_2_news() ::
    #{ 'summary' => binary(),
       'image' => binary(),
       'sentiment' => integer(),
       'source_country' => binary(),
       'language' => binary(),
       'id' => integer(),
       'text' => binary(),
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
       'title' => Title,
       'publish_date' => PublishDate,
       'url' => Url,
       'authors' => Authors
     }.
