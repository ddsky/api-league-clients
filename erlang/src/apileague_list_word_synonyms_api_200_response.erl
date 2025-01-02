-module(apileague_list_word_synonyms_api_200_response).

-export([encode/1]).

-export_type([apileague_list_word_synonyms_api_200_response/0]).

-type apileague_list_word_synonyms_api_200_response() ::
    #{ 'synonyms' => list()
     }.

encode(#{ 'synonyms' := Synonyms
        }) ->
    #{ 'synonyms' => Synonyms
     }.
