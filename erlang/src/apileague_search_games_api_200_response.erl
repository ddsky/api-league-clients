-module(apileague_search_games_api_200_response).

-export([encode/1]).

-export_type([apileague_search_games_api_200_response/0]).

-type apileague_search_games_api_200_response() ::
    #{ 'sorting' => maps:map(),
       'active_filter_options' => list(),
       'query' => binary(),
       'total_results' => integer(),
       'limit' => integer(),
       'offset' => integer(),
       'results' => list(),
       'filter_options' => list(),
       'sorting_options' => list()
     }.

encode(#{ 'sorting' := Sorting,
          'active_filter_options' := ActiveFilterOptions,
          'query' := Query,
          'total_results' := TotalResults,
          'limit' := Limit,
          'offset' := Offset,
          'results' := Results,
          'filter_options' := FilterOptions,
          'sorting_options' := SortingOptions
        }) ->
    #{ 'sorting' => Sorting,
       'active_filter_options' => ActiveFilterOptions,
       'query' => Query,
       'total_results' => TotalResults,
       'limit' => Limit,
       'offset' => Offset,
       'results' => Results,
       'filter_options' => FilterOptions,
       'sorting_options' => SortingOptions
     }.
