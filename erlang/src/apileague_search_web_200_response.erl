-module(apileague_search_web_200_response).

-export([encode/1]).

-export_type([apileague_search_web_200_response/0]).

-type apileague_search_web_200_response() ::
    #{ 'results' => list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
