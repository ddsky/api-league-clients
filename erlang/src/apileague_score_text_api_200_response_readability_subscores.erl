-module(apileague_score_text_api_200_response_readability_subscores).

-export([encode/1]).

-export_type([apileague_score_text_api_200_response_readability_subscores/0]).

-type apileague_score_text_api_200_response_readability_subscores() ::
    #{ 'forcast' => integer(),
       'flesch' => integer(),
       'smog' => integer(),
       'ari' => integer(),
       'lix' => integer(),
       'kincaid' => integer(),
       'fog' => integer(),
       'coleman_liau' => integer(),
       'reading_time_seconds' => integer()
     }.

encode(#{ 'forcast' := Forcast,
          'flesch' := Flesch,
          'smog' := Smog,
          'ari' := Ari,
          'lix' := Lix,
          'kincaid' := Kincaid,
          'fog' := Fog,
          'coleman_liau' := ColemanLiau,
          'reading_time_seconds' := ReadingTimeSeconds
        }) ->
    #{ 'forcast' => Forcast,
       'flesch' => Flesch,
       'smog' => Smog,
       'ari' => Ari,
       'lix' => Lix,
       'kincaid' => Kincaid,
       'fog' => Fog,
       'coleman_liau' => ColemanLiau,
       'reading_time_seconds' => ReadingTimeSeconds
     }.
