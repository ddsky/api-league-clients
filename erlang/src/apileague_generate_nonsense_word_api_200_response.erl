-module(apileague_generate_nonsense_word_api_200_response).

-export([encode/1]).

-export_type([apileague_generate_nonsense_word_api_200_response/0]).

-type apileague_generate_nonsense_word_api_200_response() ::
    #{ 'word' => binary(),
       'rating' => integer()
     }.

encode(#{ 'word' := Word,
          'rating' := Rating
        }) ->
    #{ 'word' => Word,
       'rating' => Rating
     }.
