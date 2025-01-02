-module(apileague_score_readability_api_200_response).

-export([encode/1]).

-export_type([apileague_score_readability_api_200_response/0]).

-type apileague_score_readability_api_200_response() ::
    #{ 'readability' => apileague_score_text_api_200_response_readability:apileague_score_text_api_200_response_readability()
     }.

encode(#{ 'readability' := Readability
        }) ->
    #{ 'readability' => Readability
     }.
