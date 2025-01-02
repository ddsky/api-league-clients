-module(apileague_score_text_api_200_response_style_subscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_style_subscores/0]).

-type apileague_score_text_api_200_response_style_subscores() ::
    #{ 'abbreviation_score' => list(),
       'style_score' => list(),
       'spelling_score' => list()
     }.

encode(#{ 'abbreviation_score' := AbbreviationScore,
          'style_score' := StyleScore,
          'spelling_score' := SpellingScore
        }) ->
    #{ 'abbreviation_score' => AbbreviationScore,
       'style_score' => StyleScore,
       'spelling_score' => SpellingScore
     }.
