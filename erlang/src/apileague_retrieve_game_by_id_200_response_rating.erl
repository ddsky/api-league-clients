-module(apileague_retrieve_game_by_id_200_response_rating).

-export([encode/1]).

-export_type([apileague_retrieve_game_by_id_200_response_rating/0]).

-type apileague_retrieve_game_by_id_200_response_rating() ::
    #{ 'count' => integer(),
       'count_critics' => integer(),
       'mean_players' => integer(),
       'mean_critics' => integer(),
       'mean' => integer(),
       'count_players' => integer()
     }.

encode(#{ 'count' := Count,
          'count_critics' := CountCritics,
          'mean_players' := MeanPlayers,
          'mean_critics' := MeanCritics,
          'mean' := Mean,
          'count_players' := CountPlayers
        }) ->
    #{ 'count' => Count,
       'count_critics' => CountCritics,
       'mean_players' => MeanPlayers,
       'mean_critics' => MeanCritics,
       'mean' => Mean,
       'count_players' => CountPlayers
     }.
