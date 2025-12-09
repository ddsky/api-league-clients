-module(apileague_extract_entities_api_200_response_entities_inner).

-export([encode/1]).

-export_type([apileague_extract_entities_api_200_response_entities_inner/0]).

-type apileague_extract_entities_api_200_response_entities_inner() ::
    #{ 'type' => binary(),
       'value' => binary(),
       'start_position' => integer(),
       'end_position' => integer(),
       'image' => binary()
     }.

encode(#{ 'type' := Type,
          'value' := Value,
          'start_position' := StartPosition,
          'end_position' := EndPosition,
          'image' := Image
        }) ->
    #{ 'type' => Type,
       'value' => Value,
       'start_position' => StartPosition,
       'end_position' => EndPosition,
       'image' => Image
     }.
