-module(openapi_inline_response_200_22).

-export([encode/1]).

-export_type([openapi_inline_response_200_22/0]).

-type openapi_inline_response_200_22() ::
    #{ 'synonyms' => list()
     }.

encode(#{ 'synonyms' := Synonyms
        }) ->
    #{ 'synonyms' => Synonyms
     }.
