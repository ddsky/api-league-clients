-module(apileague_extract_entities_200_response).

-export([encode/1]).

-export_type([apileague_extract_entities_200_response/0]).

-type apileague_extract_entities_200_response() ::
    #{ 'entities' => list()
     }.

encode(#{ 'entities' := Entities
        }) ->
    #{ 'entities' => Entities
     }.
