-module(apileague_search_drinks_api_200_response).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response/0]).

-type apileague_search_drinks_api_200_response() ::
    #{ 'offset' => integer(),
       'number' => integer(),
       'drinks' => list(),
       'total_results' => integer()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'drinks' := Drinks,
          'total_results' := TotalResults
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'drinks' => Drinks,
       'total_results' => TotalResults
     }.
