-module(apileague_score_text_api_200_response_interestingness_subscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_interestingness_subscores/0]).

-type apileague_score_text_api_200_response_interestingness_subscores() ::
    #{ 'google_hits_score' => list(),
       'link_score' => list(),
       'quote_score' => list(),
       'title_rating_score' => list(),
       'length_score' => list()
     }.

encode(#{ 'google_hits_score' := GoogleHitsScore,
          'link_score' := LinkScore,
          'quote_score' := QuoteScore,
          'title_rating_score' := TitleRatingScore,
          'length_score' := LengthScore
        }) ->
    #{ 'google_hits_score' => GoogleHitsScore,
       'link_score' => LinkScore,
       'quote_score' => QuoteScore,
       'title_rating_score' => TitleRatingScore,
       'length_score' => LengthScore
     }.
