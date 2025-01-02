-module(apileague_correct_spelling_api_200_response).

-export([encode/1]).

-export_type([apileague_correct_spelling_api_200_response/0]).

-type apileague_correct_spelling_api_200_response() ::
    #{ 'corrected_text' => binary()
     }.

encode(#{ 'corrected_text' := CorrectedText
        }) ->
    #{ 'corrected_text' => CorrectedText
     }.
