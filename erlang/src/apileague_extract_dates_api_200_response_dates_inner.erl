-module(apileague_extract_dates_api_200_response_dates_inner).

-export([encode/1]).

-export_type([apileague_extract_dates_api_200_response_dates_inner/0]).

-type apileague_extract_dates_api_200_response_dates_inner() ::
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
