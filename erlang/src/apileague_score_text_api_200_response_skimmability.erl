-module(apileague_score_text_api_200_response_skimmability).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_skimmability/0]).

-type apileague_score_text_api_200_response_skimmability() ::
    #{ 'mainscores' => apileague_score_text_api_200_response_skimmability_mainscores:apileague_score_text_api_200_response_skimmability_mainscores(),
       'subscores' => apileague_score_text_api_200_response_skimmability_subscores:apileague_score_text_api_200_response_skimmability_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
