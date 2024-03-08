-module(apileague_text_stemming_200_response).

-export([encode/1]).

-export_type([apileague_text_stemming_200_response/0]).

-type apileague_text_stemming_200_response() ::
    #{ 'original' => binary(),
       'stemmed' => binary()
     }.

encode(#{ 'original' := Original,
          'stemmed' := Stemmed
        }) ->
    #{ 'original' => Original,
       'stemmed' => Stemmed
     }.
