-module(openapi_inline_response_200_27_entities).

-export([encode/1]).

-export_type([openapi_inline_response_200_27_entities/0]).

-type openapi_inline_response_200_27_entities() ::
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
