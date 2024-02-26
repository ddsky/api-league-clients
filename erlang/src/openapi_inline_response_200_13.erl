-module(openapi_inline_response_200_13).

-export([encode/1]).

-export_type([openapi_inline_response_200_13/0]).

-type openapi_inline_response_200_13() ::
    #{ 'publish_date' => binary()
     }.

encode(#{ 'publish_date' := PublishDate
        }) ->
    #{ 'publish_date' => PublishDate
     }.
