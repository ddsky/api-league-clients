-module(openapi_inline_response_200_28_license).

-export([encode/1]).

-export_type([openapi_inline_response_200_28_license/0]).

-type openapi_inline_response_200_28_license() ::
    #{ 'name' => binary(),
       'link' => binary()
     }.

encode(#{ 'name' := Name,
          'link' := Link
        }) ->
    #{ 'name' => Name,
       'link' => Link
     }.
