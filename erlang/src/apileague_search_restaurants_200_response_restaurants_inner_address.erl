-module(apileague_search_restaurants_200_response_restaurants_inner_address).

-export([encode/1]).

-export_type([apileague_search_restaurants_200_response_restaurants_inner_address/0]).

-type apileague_search_restaurants_200_response_restaurants_inner_address() ::
    #{ 'zipcode' => binary(),
       'country' => binary(),
       'city' => binary(),
       'latitude' => integer(),
       'lon' => integer(),
       'street_addr_2' => binary(),
       'state' => binary(),
       'street_addr' => binary(),
       'lat' => integer(),
       'longitude' => integer()
     }.

encode(#{ 'zipcode' := Zipcode,
          'country' := Country,
          'city' := City,
          'latitude' := Latitude,
          'lon' := Lon,
          'street_addr_2' := StreetAddr2,
          'state' := State,
          'street_addr' := StreetAddr,
          'lat' := Lat,
          'longitude' := Longitude
        }) ->
    #{ 'zipcode' => Zipcode,
       'country' => Country,
       'city' => City,
       'latitude' => Latitude,
       'lon' => Lon,
       'street_addr_2' => StreetAddr2,
       'state' => State,
       'street_addr' => StreetAddr,
       'lat' => Lat,
       'longitude' => Longitude
     }.
