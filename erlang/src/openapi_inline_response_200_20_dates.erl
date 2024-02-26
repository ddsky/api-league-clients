-module(openapi_inline_response_200_20_dates).

-export([encode/1]).

-export_type([openapi_inline_response_200_20_dates/0]).

-type openapi_inline_response_200_20_dates() ::
    #{ 'start_position' => integer(),
       'date' => binary(),
       'normalized_date' => openapi_null:openapi_null(),
       'tag' => binary(),
       'end_position' => integer()
     }.

encode(#{ 'start_position' := StartPosition,
          'date' := Date,
          'normalized_date' := NormalizedDate,
          'tag' := Tag,
          'end_position' := EndPosition
        }) ->
    #{ 'start_position' => StartPosition,
       'date' => Date,
       'normalized_date' => NormalizedDate,
       'tag' => Tag,
       'end_position' => EndPosition
     }.
