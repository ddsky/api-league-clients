-module(apileague_detect_gender_by_name_api_200_response).

-export([encode/1]).

-export_type([apileague_detect_gender_by_name_api_200_response/0]).

-type apileague_detect_gender_by_name_api_200_response() ::
    #{ 'name' => binary(),
       'probability_male' => integer(),
       'probability_female' => integer(),
       'popularity' => integer()
     }.

encode(#{ 'name' := Name,
          'probability_male' := ProbabilityMale,
          'probability_female' := ProbabilityFemale,
          'popularity' := Popularity
        }) ->
    #{ 'name' => Name,
       'probability_male' => ProbabilityMale,
       'probability_female' => ProbabilityFemale,
       'popularity' => Popularity
     }.
