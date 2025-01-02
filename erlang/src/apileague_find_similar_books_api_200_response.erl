-module(apileague_find_similar_books_api_200_response).

-export([encode/1]).

-export_type([apileague_find_similar_books_api_200_response/0]).

-type apileague_find_similar_books_api_200_response() ::
    #{ 'similar_books' => list()
     }.

encode(#{ 'similar_books' := SimilarBooks
        }) ->
    #{ 'similar_books' => SimilarBooks
     }.
