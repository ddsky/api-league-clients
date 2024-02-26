-module(openapi_inline_response_200_19).

-export([encode/1]).

-export_type([openapi_inline_response_200_19/0]).

-type openapi_inline_response_200_19() ::
    #{ 'number_of_words' => integer(),
       'number_of_sentences' => integer(),
       'readability' => openapi_inline_response_200_19_readability:openapi_inline_response_200_19_readability(),
       'skimmability' => openapi_inline_response_200_19_skimmability:openapi_inline_response_200_19_skimmability(),
       'interestingness' => openapi_inline_response_200_19_interestingness:openapi_inline_response_200_19_interestingness(),
       'style' => openapi_inline_response_200_19_style:openapi_inline_response_200_19_style(),
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
