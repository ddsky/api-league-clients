-module(openapi_inline_response_200_23).

-export([encode/1]).

-export_type([openapi_inline_response_200_23/0]).

-type openapi_inline_response_200_23() ::
    #{ 'tagged_text' => binary()
     }.

encode(#{ 'tagged_text' := TaggedText
        }) ->
    #{ 'tagged_text' => TaggedText
     }.
