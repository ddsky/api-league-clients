-module(openapi_inline_response_200_19_skimmability_subscores).

-export([encode/1]).

-export_type([openapi_inline_response_200_19_skimmability_subscores/0]).

-type openapi_inline_response_200_19_skimmability_subscores() ::
    #{ 'bullet_point_ratio_score' => list(),
       'image_score' => list(),
       'highlighted_word_ratio_score' => list(),
       'video_score' => list(),
       'paragraph_score' => list(),
       'paragraph_headline_ratio_score' => list()
     }.

encode(#{ 'bullet_point_ratio_score' := BulletPointRatioScore,
          'image_score' := ImageScore,
          'highlighted_word_ratio_score' := HighlightedWordRatioScore,
          'video_score' := VideoScore,
          'paragraph_score' := ParagraphScore,
          'paragraph_headline_ratio_score' := ParagraphHeadlineRatioScore
        }) ->
    #{ 'bullet_point_ratio_score' => BulletPointRatioScore,
       'image_score' => ImageScore,
       'highlighted_word_ratio_score' => HighlightedWordRatioScore,
       'video_score' => VideoScore,
       'paragraph_score' => ParagraphScore,
       'paragraph_headline_ratio_score' => ParagraphHeadlineRatioScore
     }.
