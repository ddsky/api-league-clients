-module(apileague_score_text_api_200_response_style).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_style/0]).

-type apileague_score_text_api_200_response_style() ::
    #{ 'mainscores' => apileague_score_text_api_200_response_readability_mainscores:apileague_score_text_api_200_response_readability_mainscores(),
       'subscores' => apileague_score_text_api_200_response_style_subscores:apileague_score_text_api_200_response_style_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
