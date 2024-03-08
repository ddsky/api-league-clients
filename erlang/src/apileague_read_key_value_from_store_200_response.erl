-module(apileague_read_key_value_from_store_200_response).

-export([encode/1]).

-export_type([apileague_read_key_value_from_store_200_response/0]).

-type apileague_read_key_value_from_store_200_response() ::
    #{ 'value' => binary()
     }.

encode(#{ 'value' := Value
        }) ->
    #{ 'value' => Value
     }.
