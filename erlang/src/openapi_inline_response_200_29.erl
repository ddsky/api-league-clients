-module(openapi_inline_response_200_29).

-export([encode/1]).

-export_type([openapi_inline_response_200_29/0]).

-type openapi_inline_response_200_29() ::
    #{ 'specific_color' => binary(),
       'main_color' => binary(),
       'hex_code' => binary()
     }.

encode(#{ 'specific_color' := SpecificColor,
          'main_color' := MainColor,
          'hex_code' := HexCode
        }) ->
    #{ 'specific_color' => SpecificColor,
       'main_color' => MainColor,
       'hex_code' => HexCode
     }.
