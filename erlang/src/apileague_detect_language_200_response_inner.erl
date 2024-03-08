-module(apileague_detect_language_200_response_inner).

-export([encode/1]).

-export_type([apileague_detect_language_200_response_inner/0]).

-type apileague_detect_language_200_response_inner() ::
    #{ 'language' => binary(),
       'confidence' => integer()
     }.

encode(#{ 'language' := Language,
          'confidence' := Confidence
        }) ->
    #{ 'language' => Language,
       'confidence' => Confidence
     }.
