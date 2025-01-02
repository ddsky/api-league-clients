-module(apileague_detect_sentiment_api_200_response_sentences_inner).

-export([encode/1]).

-export_type([apileague_detect_sentiment_api_200_response_sentences_inner/0]).

-type apileague_detect_sentiment_api_200_response_sentences_inner() ::
    #{ 'length' => integer(),
       'sentiment' => binary(),
       'offset' => integer(),
       'confidence' => integer()
     }.

encode(#{ 'length' := Length,
          'sentiment' := Sentiment,
          'offset' := Offset,
          'confidence' := Confidence
        }) ->
    #{ 'length' => Length,
       'sentiment' => Sentiment,
       'offset' => Offset,
       'confidence' => Confidence
     }.
