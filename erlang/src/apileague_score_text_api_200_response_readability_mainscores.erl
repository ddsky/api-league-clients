-module(apileague_score_text_api_200_response_readability_mainscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_readability_mainscores/0]).

-type apileague_score_text_api_200_response_readability_mainscores() ::
    #{ 'total_possible' => integer(),
       'total' => integer()
     }.

encode(#{ 'total_possible' := TotalPossible,
          'total' := Total
        }) ->
    #{ 'total_possible' => TotalPossible,
       'total' => Total
     }.
