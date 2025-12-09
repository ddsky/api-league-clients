-module(apileague_vector_search_api_200_response_vectors_inner).

-export([encode/1]).

-export_type([apileague_vector_search_api_200_response_vectors_inner/0]).

-type apileague_vector_search_api_200_response_vectors_inner() ::
    #{ 'title' => binary(),
       'license' => binary(),
       'author' => binary(),
       'image_url' => binary()
     }.

encode(#{ 'title' := Title,
          'license' := License,
          'author' := Author,
          'image_url' := ImageUrl
        }) ->
    #{ 'title' => Title,
       'license' => License,
       'author' => Author,
       'image_url' => ImageUrl
     }.
