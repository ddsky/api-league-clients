-module(apileague_detect_main_image_color_200_response_inner).

-export([encode/1]).

-export_type([apileague_detect_main_image_color_200_response_inner/0]).

-type apileague_detect_main_image_color_200_response_inner() ::
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
