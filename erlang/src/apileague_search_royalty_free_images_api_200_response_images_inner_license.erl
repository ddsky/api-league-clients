-module(apileague_search_royalty_free_images_api_200_response_images_inner_license).

-export([encode/1]).

-export_type([apileague_search_royalty_free_images_api_200_response_images_inner_license/0]).

-type apileague_search_royalty_free_images_api_200_response_images_inner_license() ::
    #{ 'name' => binary(),
       'link' => binary()
     }.

encode(#{ 'name' := Name,
          'link' := Link
        }) ->
    #{ 'name' => Name,
       'link' => Link
     }.
