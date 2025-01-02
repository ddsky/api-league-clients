-module(apileague_extract_news_api_200_response).

-export([encode/1]).

-export_type([apileague_extract_news_api_200_response/0]).

-type apileague_extract_news_api_200_response() ::
    #{ 'title' => binary(),
       'text' => binary(),
       'url' => binary(),
       'images' => list(),
       'videos' => list(),
       'publish_date' => binary(),
       'authors' => list(),
       'language' => binary()
     }.

encode(#{ 'title' := Title,
          'text' := Text,
          'url' := Url,
          'images' := Images,
          'videos' := Videos,
          'publish_date' := PublishDate,
          'authors' := Authors,
          'language' := Language
        }) ->
    #{ 'title' => Title,
       'text' => Text,
       'url' => Url,
       'images' => Images,
       'videos' => Videos,
       'publish_date' => PublishDate,
       'authors' => Authors,
       'language' => Language
     }.
