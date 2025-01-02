-module(apileague_search_books_api_200_response_books_inner_inner).

-export([encode/1]).

-export_type([apileague_search_books_api_200_response_books_inner_inner/0]).

-type apileague_search_books_api_200_response_books_inner_inner() ::
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
