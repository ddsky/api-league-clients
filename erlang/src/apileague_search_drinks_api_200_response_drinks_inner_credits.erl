-module(apileague_search_drinks_api_200_response_drinks_inner_credits).

-export([encode/1]).

-export_type([apileague_search_drinks_api_200_response_drinks_inner_credits/0]).

-type apileague_search_drinks_api_200_response_drinks_inner_credits() ::
    #{ 'text' => binary(),
       'source_name' => binary(),
       'source_url' => binary()
     }.

encode(#{ 'text' := Text,
          'source_name' := SourceName,
          'source_url' := SourceUrl
        }) ->
    #{ 'text' => Text,
       'source_name' => SourceName,
       'source_url' => SourceUrl
     }.
