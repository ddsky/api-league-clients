-module(openapi_inline_response_200_18).

-export([encode/1]).

-export_type([openapi_inline_response_200_18/0]).

-type openapi_inline_response_200_18() ::
    #{ 'document' => openapi_inline_response_200_18_document:openapi_inline_response_200_18_document(),
       'sentences' => list()
     }.

encode(#{ 'document' := Document,
          'sentences' := Sentences
        }) ->
    #{ 'document' => Document,
       'sentences' => Sentences
     }.
