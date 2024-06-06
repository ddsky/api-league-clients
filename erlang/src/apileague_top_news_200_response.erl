-module(apileague_top_news_200_response).

-export([encode/1]).

-export_type([apileague_top_news_200_response/0]).

-type apileague_top_news_200_response() ::
    #{ 'top_news' => list(),
       'language' => binary(),
       'country' => binary()
     }.

encode(#{ 'top_news' := TopNews,
          'language' := Language,
          'country' := Country
        }) ->
    #{ 'top_news' => TopNews,
       'language' => Language,
       'country' => Country
     }.
