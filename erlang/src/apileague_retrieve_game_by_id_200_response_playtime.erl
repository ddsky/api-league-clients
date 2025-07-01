-module(apileague_retrieve_game_by_id_200_response_playtime).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_playtime/0]).

-type apileague_retrieve_game_by_id_200_response_playtime() ::
    #{ 'percentiles' => list(),
       'min' => integer(),
       'median' => integer(),
       'max' => integer(),
       'mean' => integer(),
       'mentions' => integer()
     }.

encode(#{ 'percentiles' := Percentiles,
          'min' := Min,
          'median' := Median,
          'max' := Max,
          'mean' := Mean,
          'mentions' := Mentions
        }) ->
    #{ 'percentiles' => Percentiles,
       'min' => Min,
       'median' => Median,
       'max' => Max,
       'mean' => Mean,
       'mentions' => Mentions
     }.
