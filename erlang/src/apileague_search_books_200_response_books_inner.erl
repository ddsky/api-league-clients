-module(apileague_search_books_200_response_books_inner).

-export([encode/1]).

-export_type([apileague_search_books_200_response_books_inner/0]).

-type apileague_search_books_200_response_books_inner() ::
    #{ 'title' => binary(),
       'image' => binary(),
       'id' => integer()
     }.

encode(#{ 'title' := Title,
          'image' := Image,
          'id' := Id
        }) ->
    #{ 'title' => Title,
       'image' => Image,
       'id' => Id
     }.
