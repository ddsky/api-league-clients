-module(openapi_inline_response_200).

-export([encode/1]).

-export_type([openapi_inline_response_200/0]).

-type openapi_inline_response_200() ::
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
