-module(apileague_score_text_api_200_response_skimmability_subscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_skimmability_subscores/0]).

-type apileague_score_text_api_200_response_skimmability_subscores() ::
    #{ 'highlighted_word_ratio_score' => list(),
       'bullet_point_ratio_score' => list(),
       'paragraph_headline_ratio_score' => list(),
       'image_score' => list(),
       'video_score' => list(),
       'paragraph_score' => list()
     }.

encode(#{ 'highlighted_word_ratio_score' := HighlightedWordRatioScore,
          'bullet_point_ratio_score' := BulletPointRatioScore,
          'paragraph_headline_ratio_score' := ParagraphHeadlineRatioScore,
          'image_score' := ImageScore,
          'video_score' := VideoScore,
          'paragraph_score' := ParagraphScore
        }) ->
    #{ 'highlighted_word_ratio_score' => HighlightedWordRatioScore,
       'bullet_point_ratio_score' => BulletPointRatioScore,
       'paragraph_headline_ratio_score' => ParagraphHeadlineRatioScore,
       'image_score' => ImageScore,
       'video_score' => VideoScore,
       'paragraph_score' => ParagraphScore
     }.
