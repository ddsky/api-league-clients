-module(apileague_retrieve_game_by_id_200_response_rating).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_rating/0]).

-type apileague_retrieve_game_by_id_200_response_rating() ::
    #{ 'mean' => integer(),
       'count' => integer(),
       'mean_players' => integer(),
       'count_players' => integer(),
       'mean_critics' => integer(),
       'count_critics' => integer()
     }.

encode(#{ 'mean' := Mean,
          'count' := Count,
          'mean_players' := MeanPlayers,
          'count_players' := CountPlayers,
          'mean_critics' := MeanCritics,
          'count_critics' := CountCritics
        }) ->
    #{ 'mean' => Mean,
       'count' => Count,
       'mean_players' => MeanPlayers,
       'count_players' => CountPlayers,
       'mean_critics' => MeanCritics,
       'count_critics' => CountCritics
     }.
