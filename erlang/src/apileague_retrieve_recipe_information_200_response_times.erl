-module(apileague_retrieve_recipe_information_200_response_times).

-export([encode/1]).

-export_type([apileague_retrieve_recipe_information_200_response_times/0]).

-type apileague_retrieve_recipe_information_200_response_times() ::
    #{ 'total_minutes' => integer()
     }.

encode(#{ 'total_minutes' := TotalMinutes
        }) ->
    #{ 'total_minutes' => TotalMinutes
     }.
