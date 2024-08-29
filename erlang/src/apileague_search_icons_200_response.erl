-module(apileague_search_icons_200_response).

-export([encode/1]).

-export_type([apileague_search_icons_200_response/0]).

-type apileague_search_icons_200_response() ::
    #{ 'icons' => list()
     }.

encode(#{ 'icons' := Icons
        }) ->
    #{ 'icons' => Icons
     }.
