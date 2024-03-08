-module(apileague_extract_authors_200_response_authors_inner).

-export([encode/1]).

-export_type([apileague_extract_authors_200_response_authors_inner/0]).

-type apileague_extract_authors_200_response_authors_inner() ::
    #{ 'link' => binary(),
       'name' => binary()
     }.

encode(#{ 'link' := Link,
          'name' := Name
        }) ->
    #{ 'link' => Link,
       'name' => Name
     }.
