-module(openapi_inline_response_200_18_interestingness_subscores).

-export([encode/1]).

-export_type([openapi_inline_response_200_18_interestingness_subscores/0]).

-type openapi_inline_response_200_18_interestingness_subscores() ::
    #{ 'title_rating_score' => list(),
       'quote_score' => list(),
       'length_score' => list(),
       'link_score' => list(),
       'google_hits_score' => list()
     }.

encode(#{ 'title_rating_score' := TitleRatingScore,
          'quote_score' := QuoteScore,
          'length_score' := LengthScore,
          'link_score' := LinkScore,
          'google_hits_score' := GoogleHitsScore
        }) ->
    #{ 'title_rating_score' => TitleRatingScore,
       'quote_score' => QuoteScore,
       'length_score' => LengthScore,
       'link_score' => LinkScore,
       'google_hits_score' => GoogleHitsScore
     }.
