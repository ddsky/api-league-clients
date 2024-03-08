-module(apileague_part_of_speech_tagging_200_response).

-export([encode/1]).

-export_type([apileague_part_of_speech_tagging_200_response/0]).

-type apileague_part_of_speech_tagging_200_response() ::
    #{ 'tagged_text' => binary()
     }.

encode(#{ 'tagged_text' := TaggedText
        }) ->
    #{ 'tagged_text' => TaggedText
     }.
