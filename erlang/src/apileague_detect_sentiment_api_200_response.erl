-module(apileague_detect_sentiment_api_200_response).

-export([encode/1]).

-export_type([apileague_detect_sentiment_api_200_response/0]).

-type apileague_detect_sentiment_api_200_response() ::
    #{ 'document' => apileague_detect_sentiment_api_200_response_document:apileague_detect_sentiment_api_200_response_document(),
       'sentences' => list()
     }.

encode(#{ 'document' := Document,
          'sentences' := Sentences
        }) ->
    #{ 'document' => Document,
       'sentences' => Sentences
     }.
