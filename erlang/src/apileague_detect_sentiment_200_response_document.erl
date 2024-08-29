-module(apileague_detect_sentiment_200_response_document).

-export([encode/1]).

-export_type([apileague_detect_sentiment_200_response_document/0]).

-type apileague_detect_sentiment_200_response_document() ::
    #{ 'sentiment' => binary(),
       'confidence' => integer(),
       'average_confidence' => integer()
     }.

encode(#{ 'sentiment' := Sentiment,
          'confidence' := Confidence,
          'average_confidence' := AverageConfidence
        }) ->
    #{ 'sentiment' => Sentiment,
       'confidence' => Confidence,
       'average_confidence' => AverageConfidence
     }.
