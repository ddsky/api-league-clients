-module(apileague_singularize_word_200_response).

-export([encode/1]).

-export_type([apileague_singularize_word_200_response/0]).

-type apileague_singularize_word_200_response() ::
    #{ 'original' => binary(),
       'singular' => binary()
     }.

encode(#{ 'original' := Original,
          'singular' := Singular
        }) ->
    #{ 'original' => Original,
       'singular' => Singular
     }.
