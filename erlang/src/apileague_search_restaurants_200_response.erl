-module(apileague_search_restaurants_200_response).

-export([encode/1]).

-export_type([apileague_search_restaurants_200_response/0]).

-type apileague_search_restaurants_200_response() ::
    #{ 'restaurants' => list()
     }.

encode(#{ 'restaurants' := Restaurants
        }) ->
    #{ 'restaurants' => Restaurants
     }.
