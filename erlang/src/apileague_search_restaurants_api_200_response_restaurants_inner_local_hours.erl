-module(apileague_search_restaurants_api_200_response_restaurants_inner_local_hours).

-export([encode/1]).

-export_type([apileague_search_restaurants_api_200_response_restaurants_inner_local_hours/0]).

-type apileague_search_restaurants_api_200_response_restaurants_inner_local_hours() ::
    #{ 'operational' => apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational:apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational(),
       'delivery' => apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational:apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational(),
       'pickup' => apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational:apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational(),
       'dine_in' => apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational:apileague_search_restaurants_api_200_response_restaurants_inner_local_hours_operational()
     }.

encode(#{ 'operational' := Operational,
          'delivery' := Delivery,
          'pickup' := Pickup,
          'dine_in' := DineIn
        }) ->
    #{ 'operational' => Operational,
       'delivery' => Delivery,
       'pickup' => Pickup,
       'dine_in' => DineIn
     }.
