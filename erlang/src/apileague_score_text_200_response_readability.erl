-module(apileague_score_text_200_response_readability).

-export([encode/1]).

-export_type([apileague_score_text_200_response_readability/0]).

-type apileague_score_text_200_response_readability() ::
    #{ 'mainscores' => apileague_score_text_200_response_readability_mainscores:apileague_score_text_200_response_readability_mainscores(),
       'subscores' => apileague_score_text_200_response_readability_subscores:apileague_score_text_200_response_readability_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
