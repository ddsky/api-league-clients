-module(openapi_inline_response_200_books).

-export([encode/1]).

-export_type([openapi_inline_response_200_books/0]).

-type openapi_inline_response_200_books() ::
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
