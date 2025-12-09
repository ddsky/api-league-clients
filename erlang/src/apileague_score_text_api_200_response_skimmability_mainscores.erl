-module(apileague_score_text_api_200_response_skimmability_mainscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_skimmability_mainscores/0]).

-type apileague_score_text_api_200_response_skimmability_mainscores() ::
    #{ 'total' => integer(),
       'total_possible' => integer()
     }.

encode(#{ 'total' := Total,
          'total_possible' := TotalPossible
        }) ->
    #{ 'total' => Total,
       'total_possible' => TotalPossible
     }.
