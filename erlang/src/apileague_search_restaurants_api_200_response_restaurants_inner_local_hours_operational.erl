-module(apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational).

-export([encode/1]).

-export_type([apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational/0]).

-type apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational() ::
    #{ 'sunday' => binary(),
       'saturday' => binary(),
       'tuesday' => binary(),
       'thursday' => binary(),
       'friday' => binary(),
       'wednesday' => binary(),
       'monday' => binary()
     }.

encode(#{ 'sunday' := Sunday,
          'saturday' := Saturday,
          'tuesday' := Tuesday,
          'thursday' := Thursday,
          'friday' := Friday,
          'wednesday' := Wednesday,
          'monday' := Monday
        }) ->
    #{ 'sunday' => Sunday,
       'saturday' => Saturday,
       'tuesday' => Tuesday,
       'thursday' => Thursday,
       'friday' => Friday,
       'wednesday' => Wednesday,
       'monday' => Monday
     }.
