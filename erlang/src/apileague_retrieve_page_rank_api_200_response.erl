-module(apileague_retrieve_page_rank_api_200_response).

-export([encode/1]).

-export_type([apileague_retrieve_page_rank_api_200_response/0]).

-type apileague_retrieve_page_rank_api_200_response() ::
    #{ 'page_rank' => integer(),
       'position' => integer(),
       'percentile' => integer()
     }.

encode(#{ 'page_rank' := PageRank,
          'position' := Position,
          'percentile' := Percentile
        }) ->
    #{ 'page_rank' => PageRank,
       'position' => Position,
       'percentile' => Percentile
     }.
