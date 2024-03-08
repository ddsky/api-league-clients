-module(apileague_extract_authors_200_response).

-export([encode/1]).

-export_type([apileague_extract_authors_200_response/0]).

-type apileague_extract_authors_200_response() ::
    #{ 'authors' => list()
     }.

encode(#{ 'authors' := Authors
        }) ->
    #{ 'authors' => Authors
     }.
