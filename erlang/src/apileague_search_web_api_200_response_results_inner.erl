-module(apileague_search_web_api_200_response_results_inner).

-export([encode/1]).

-export_type([apileague_search_web_api_200_response_results_inner/0]).

-type apileague_search_web_api_200_response_results_inner() ::
    #{ 'url' => binary(),
       'title' => binary(),
       'summary' => binary()
     }.

encode(#{ 'url' := Url,
          'title' := Title,
          'summary' := Summary
        }) ->
    #{ 'url' => Url,
       'title' => Title,
       'summary' => Summary
     }.
