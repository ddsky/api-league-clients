-module(openapi_inline_response_200_12).

-export([encode/1]).

-export_type([openapi_inline_response_200_12/0]).

-type openapi_inline_response_200_12() ::
    #{ 'title' => binary(),
       'main_text' => binary(),
       'main_html' => binary(),
       'images' => list()
     }.

encode(#{ 'title' := Title,
          'main_text' := MainText,
          'main_html' := MainHtml,
          'images' := Images
        }) ->
    #{ 'title' => Title,
       'main_text' => MainText,
       'main_html' => MainHtml,
       'images' => Images
     }.
