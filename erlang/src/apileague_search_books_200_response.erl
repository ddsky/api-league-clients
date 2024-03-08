-module(apileague_search_books_200_response).

-export([encode/1]).

-export_type([apileague_search_books_200_response/0]).

-type apileague_search_books_200_response() ::
    #{ 'available' => integer(),
       'number' => integer(),
       'offset' => integer(),
       'books' => list()
     }.

encode(#{ 'available' := Available,
          'number' := Number,
          'offset' := Offset,
          'books' := Books
        }) ->
    #{ 'available' => Available,
       'number' => Number,
       'offset' => Offset,
       'books' => Books
     }.
