-module(openapi_inline_response_200_21_dates).

-export([encode/1]).

-export_type([openapi_inline_response_200_21_dates/0]).

-type openapi_inline_response_200_21_dates() ::
    #{ 'start_position' => integer(),
       'date' => binary(),
       'normalized_date' => integer(),
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
