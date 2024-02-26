-module(openapi_inline_response_200_18_skimmability_mainscores).

-export([encode/1]).

-export_type([openapi_inline_response_200_18_skimmability_mainscores/0]).

-type openapi_inline_response_200_18_skimmability_mainscores() ::
    #{ 'total_possible' => integer(),
       'total' => integer()
     }.

encode(#{ 'total_possible' := TotalPossible,
          'total' := Total
        }) ->
    #{ 'total_possible' => TotalPossible,
       'total' => Total
     }.
