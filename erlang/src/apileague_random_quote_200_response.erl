-module(apileague_random_quote_200_response).

-export([encode/1]).

-export_type([apileague_random_quote_200_response/0]).

-type apileague_random_quote_200_response() ::
    #{ 'author' => binary(),
       'quote' => binary()
     }.

encode(#{ 'author' := Author,
          'quote' := Quote
        }) ->
    #{ 'author' => Author,
       'quote' => Quote
     }.
