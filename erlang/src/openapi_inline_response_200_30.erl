-module(openapi_inline_response_200_30).

-export([encode/1]).

-export_type([openapi_inline_response_200_30/0]).

-type openapi_inline_response_200_30() ::
    #{ 'target_amount' => integer(),
       'target_unit' => binary()
     }.

encode(#{ 'target_amount' := TargetAmount,
          'target_unit' := TargetUnit
        }) ->
    #{ 'target_amount' => TargetAmount,
       'target_unit' => TargetUnit
     }.
