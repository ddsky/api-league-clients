-module(openapi_inline_response_200_5_memes).

-export([encode/1]).

-export_type([openapi_inline_response_200_5_memes/0]).

-type openapi_inline_response_200_5_memes() ::
    #{ 'type' => binary(),
       'description' => binary(),
       'url' => binary()
     }.

encode(#{ 'type' := Type,
          'description' := Description,
          'url' := Url
        }) ->
    #{ 'type' => Type,
       'description' => Description,
       'url' => Url
     }.
