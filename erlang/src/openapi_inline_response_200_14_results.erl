-module(openapi_inline_response_200_14_results).

-export([encode/1]).

-export_type([openapi_inline_response_200_14_results/0]).

-type openapi_inline_response_200_14_results() ::
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
