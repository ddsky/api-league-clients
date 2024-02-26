-module(openapi_inline_response_200_2).

-export([encode/1]).

-export_type([openapi_inline_response_200_2/0]).

-type openapi_inline_response_200_2() ::
    #{ 'offset' => integer(),
       'number' => integer(),
       'available' => integer(),
       'news' => list()
     }.

encode(#{ 'offset' := Offset,
          'number' := Number,
          'available' := Available,
          'news' := News
        }) ->
    #{ 'offset' => Offset,
       'number' => Number,
       'available' => Available,
       'news' => News
     }.
