-module(openapi_inline_response_200_1).

-export([encode/1]).

-export_type([openapi_inline_response_200_1/0]).

-type openapi_inline_response_200_1() ::
    #{ 'similar_books' => list()
     }.

encode(#{ 'similar_books' := SimilarBooks
        }) ->
    #{ 'similar_books' => SimilarBooks
     }.
