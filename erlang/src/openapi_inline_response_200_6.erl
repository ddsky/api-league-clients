-module(openapi_inline_response_200_6).

-export([encode/1]).

-export_type([openapi_inline_response_200_6/0]).

-type openapi_inline_response_200_6() ::
    #{ 'description' => binary(),
       'url' => binary(),
       'type' => binary(),
       'width' => integer(),
       'height' => integer(),
       'ratio' => integer()
     }.

encode(#{ 'description' := Description,
          'url' := Url,
          'type' := Type,
          'width' := Width,
          'height' := Height,
          'ratio' := Ratio
        }) ->
    #{ 'description' => Description,
       'url' => Url,
       'type' => Type,
       'width' => Width,
       'height' => Height,
       'ratio' => Ratio
     }.
