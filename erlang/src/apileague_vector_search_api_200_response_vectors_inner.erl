-module(apileague_vector_search_api_200_response_vectors_inner).

-export([encode/1]).

-export_type([apileague_vector_search_api_200_response_vectors_inner/0]).

-type apileague_vector_search_api_200_response_vectors_inner() ::
    #{ 'license' => binary(),
       'title' => binary(),
       'author' => binary(),
       'image_url' => binary()
     }.

encode(#{ 'license' := License,
          'title' := Title,
          'author' := Author,
          'image_url' := ImageUrl
        }) ->
    #{ 'license' => License,
       'title' => Title,
       'author' => Author,
       'image_url' => ImageUrl
     }.
