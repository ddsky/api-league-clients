-module(apileague_extract_dates_api_200_response).

-export([encode/1]).

-export_type([apileague_extract_dates_api_200_response/0]).

-type apileague_extract_dates_api_200_response() ::
    #{ 'dates' => list()
     }.

encode(#{ 'dates' := Dates
        }) ->
    #{ 'dates' => Dates
     }.
