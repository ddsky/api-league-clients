-module(openapi_inline_response_200_14_authors).

-export([encode/1]).

-export_type([openapi_inline_response_200_14_authors/0]).

-type openapi_inline_response_200_14_authors() ::
    #{ 'link' => binary(),
       'name' => binary()
     }.

encode(#{ 'link' := Link,
          'name' := Name
        }) ->
    #{ 'link' => Link,
       'name' => Name
     }.
