-module(apileague_search_books_200_response).

-export([encode/1]).

-export_type([apileague_search_books_200_response/0]).

-type apileague_search_books_200_response() ::
    #{ 'total_results' => integer(),
       'number' => integer(),
       'offset' => integer(),
       'books' => list()
     }.

encode(#{ 'total_results' := TotalResults,
          'number' := Number,
          'offset' := Offset,
          'books' := Books
        }) ->
    #{ 'total_results' => TotalResults,
       'number' => Number,
       'offset' => Offset,
       'books' => Books
     }.
