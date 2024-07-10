-module(apileague_random_riddle_200_response).

-export([encode/1]).

-export_type([apileague_random_riddle_200_response/0]).

-type apileague_random_riddle_200_response() ::
    #{ 'riddle' => binary(),
       'answer' => binary(),
       'difficulty' => binary()
     }.

encode(#{ 'riddle' := Riddle,
          'answer' := Answer,
          'difficulty' := Difficulty
        }) ->
    #{ 'riddle' => Riddle,
       'answer' => Answer,
       'difficulty' => Difficulty
     }.
