-module(apileague_score_text_200_response_readability_subscores).

-export([encode/1]).

-export_type([apileague_score_text_200_response_readability_subscores/0]).

-type apileague_score_text_200_response_readability_subscores() ::
    #{ 'reading_time_seconds' => integer(),
       'forcast' => integer(),
       'flesch' => integer(),
       'smog' => integer(),
       'ari' => integer(),
       'lix' => integer(),
       'coleman_liau' => integer(),
       'kincaid' => integer(),
       'fog' => integer()
     }.

encode(#{ 'reading_time_seconds' := ReadingTimeSeconds,
          'forcast' := Forcast,
          'flesch' := Flesch,
          'smog' := Smog,
          'ari' := Ari,
          'lix' := Lix,
          'coleman_liau' := ColemanLiau,
          'kincaid' := Kincaid,
          'fog' := Fog
        }) ->
    #{ 'reading_time_seconds' => ReadingTimeSeconds,
       'forcast' => Forcast,
       'flesch' => Flesch,
       'smog' => Smog,
       'ari' => Ari,
       'lix' => Lix,
       'coleman_liau' => ColemanLiau,
       'kincaid' => Kincaid,
       'fog' => Fog
     }.
