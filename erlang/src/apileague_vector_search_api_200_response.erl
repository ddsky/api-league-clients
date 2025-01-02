-module(apileague_vector_search_api_200_response).

-export([encode/1]).

-export_type([apileague_vector_search_api_200_response/0]).

-type apileague_vector_search_api_200_response() ::
    #{ 'vectors' => list()
     }.

encode(#{ 'vectors' := Vectors
        }) ->
    #{ 'vectors' => Vectors
     }.
