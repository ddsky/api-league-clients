-module(apileague_convert_units_200_response).

-export([encode/1]).

-export_type([apileague_convert_units_200_response/0]).

-type apileague_convert_units_200_response() ::
    #{ 'target_amount' => integer(),
       'target_unit' => binary()
     }.

encode(#{ 'target_amount' := TargetAmount,
          'target_unit' := TargetUnit
        }) ->
    #{ 'target_amount' => TargetAmount,
       'target_unit' => TargetUnit
     }.
