-module(openapi_inline_response_200_3).

-export([encode/1]).

-export_type([openapi_inline_response_200_3/0]).

-type openapi_inline_response_200_3() ::
    #{ 'title' => binary(),
       'text' => binary(),
       'url' => binary(),
       'image' => binary(),
       'publish_date' => binary(),
       'author' => binary(),
       'language' => binary(),
       'source_country' => binary(),
       'sentiment' => integer()
     }.

encode(#{ 'title' := Title,
          'text' := Text,
          'url' := Url,
          'image' := Image,
          'publish_date' := PublishDate,
          'author' := Author,
          'language' := Language,
          'source_country' := SourceCountry,
          'sentiment' := Sentiment
        }) ->
    #{ 'title' => Title,
       'text' => Text,
       'url' => Url,
       'image' => Image,
       'publish_date' => PublishDate,
       'author' => Author,
       'language' => Language,
       'source_country' => SourceCountry,
       'sentiment' => Sentiment
     }.
