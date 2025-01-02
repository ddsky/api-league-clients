-module(apileague_extract_entities_api_200_response_entities_inner).

-export([encode/1]).

-export_type([apileague_extract_entities_api_200_response_entities_inner/0]).

-type apileague_extract_entities_api_200_response_entities_inner() ::
    #{ 'start_position' => integer(),
       'image' => binary(),
       'type' => binary(),
       'value' => binary(),
       'end_position' => integer()
     }.

encode(#{ 'start_position' := StartPosition,
          'image' := Image,
          'type' := Type,
          'value' := Value,
          'end_position' := EndPosition
        }) ->
    #{ 'start_position' => StartPosition,
       'image' => Image,
       'type' => Type,
       'value' => Value,
       'end_position' => EndPosition
     }.
