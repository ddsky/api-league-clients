-module(apileague_store_key_value_get_200_response).

-export([encode/1]).

-export_type([apileague_store_key_value_get_200_response/0]).

-type apileague_store_key_value_get_200_response() ::
    #{ 'status' => binary()
     }.

encode(#{ 'status' := Status
        }) ->
    #{ 'status' => Status
     }.
