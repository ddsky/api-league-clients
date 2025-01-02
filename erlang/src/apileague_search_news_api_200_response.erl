-module(apileague_search_news_api_200_response).

-export([encode/1]).

-export_type([apileague_search_news_api_200_response/0]).

-type apileague_search_news_api_200_response() ::
    #{ 'offset' => integer(),
       'number' => integer(),
       'available' => integer(),
       'news' => list()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'available' := Available,
          'news' := News
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'available' => Available,
       'news' => News
     }.
