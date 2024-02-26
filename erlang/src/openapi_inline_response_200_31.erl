-module(openapi_inline_response_200_31).

-export([encode/1]).

-export_type([openapi_inline_response_200_31/0]).

-type openapi_inline_response_200_31() ::
    #{ 'value' => binary()
     }.

encode(#{ 'value' := Value
        }) ->
    #{ 'value' => Value
     }.
