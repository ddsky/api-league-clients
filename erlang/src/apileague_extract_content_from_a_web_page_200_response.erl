-module(apileague_extract_content_from_a_web_page_200_response).

-export([encode/1]).

-export_type([apileague_extract_content_from_a_web_page_200_response/0]).

-type apileague_extract_content_from_a_web_page_200_response() ::
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
