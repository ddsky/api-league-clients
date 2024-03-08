-module(apileague_score_text_200_response).

-export([encode/1]).

-export_type([apileague_score_text_200_response/0]).

-type apileague_score_text_200_response() ::
    #{ 'number_of_words' => integer(),
       'number_of_sentences' => integer(),
       'readability' => apileague_score_text_200_response_readability:apileague_score_text_200_response_readability(),
       'skimmability' => apileague_score_text_200_response_skimmability:apileague_score_text_200_response_skimmability(),
       'interestingness' => apileague_score_text_200_response_interestingness:apileague_score_text_200_response_interestingness(),
       'style' => apileague_score_text_200_response_style:apileague_score_text_200_response_style(),
       'total_score' => integer()
     }.

encode(#{ 'number_of_words' := NumberOfWords,
          'number_of_sentences' := NumberOfSentences,
          'readability' := Readability,
          'skimmability' := Skimmability,
          'interestingness' := Interestingness,
          'style' := Style,
          'total_score' := TotalScore
        }) ->
    #{ 'number_of_words' => NumberOfWords,
       'number_of_sentences' => NumberOfSentences,
       'readability' => Readability,
       'skimmability' => Skimmability,
       'interestingness' => Interestingness,
       'style' => Style,
       'total_score' => TotalScore
     }.
