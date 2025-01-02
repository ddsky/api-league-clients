-module(apileague_pluralize_word_api_200_response).

-export([encode/1]).

-export_type([apileague_pluralize_word_api_200_response/0]).

-type apileague_pluralize_word_api_200_response() ::
    #{ 'original' => binary(),
       'plural' => binary()
     }.

encode(#{ 'original' := Original,
          'plural' := Plural
        }) ->
    #{ 'original' => Original,
       'plural' => Plural
     }.
