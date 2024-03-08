-module(apileague_score_text_200_response_interestingness).

-export([encode/1]).

-export_type([apileague_score_text_200_response_interestingness/0]).

-type apileague_score_text_200_response_interestingness() ::
    #{ 'mainscores' => apileague_score_text_200_response_skimmability_mainscores:apileague_score_text_200_response_skimmability_mainscores(),
       'subscores' => apileague_score_text_200_response_interestingness_subscores:apileague_score_text_200_response_interestingness_subscores()
     }.

encode(#{ 'mainscores' := Mainscores,
          'subscores' := Subscores
        }) ->
    #{ 'mainscores' => Mainscores,
       'subscores' => Subscores
     }.
