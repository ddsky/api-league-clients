-module(openapi_inline_response_200_15_results).

-export([encode/1]).

-export_type([openapi_inline_response_200_15_results/0]).

-type openapi_inline_response_200_15_results() ::
    #{ 'title' => binary(),
       'summary' => binary(),
       'url' => binary()
     }.

encode(#{ 'title' := Title,
          'summary' := Summary,
          'url' := Url
        }) ->
    #{ 'title' => Title,
       'summary' => Summary,
       'url' => Url
     }.
