-module(openapi_inline_response_200_8).

-export([encode/1]).

-export_type([openapi_inline_response_200_8/0]).

-type openapi_inline_response_200_8() ::
    #{ 'word' => binary(),
       'rating' => integer()
     }.

encode(#{ 'word' := Word,
          'rating' := Rating
        }) ->
    #{ 'word' => Word,
       'rating' => Rating
     }.
