-module(apileague_search_restaurants_200_response_restaurants_inner).

-export([encode/1]).

-export_type([apileague_search_restaurants_200_response_restaurants_inner/0]).

-type apileague_search_restaurants_200_response_restaurants_inner() ::
    #{ 'offers_third_party_delivery' => boolean(),
       'address' => apileague_search_restaurants_200_response_restaurants_inner_address:apileague_search_restaurants_200_response_restaurants_inner_address(),
       'supports_upc_codes' => boolean(),
       'is_open' => boolean(),
       'description' => binary(),
       'weighted_rating_value' => integer(),
       'type' => binary(),
       'offers_first_party_delivery' => boolean(),
       'aggregated_rating_count' => integer(),
       'pickup_enabled' => boolean(),
       'cuisines' => list(),
       'miles' => integer(),
       'dollar_signs' => integer(),
       'delivery_enabled' => boolean(),
       'name' => binary(),
       'phone_number' => integer(),
       '_id' => binary(),
       'local_hours' => apileague_search_restaurants_200_response_restaurants_inner_local_hours:apileague_search_restaurants_200_response_restaurants_inner_local_hours()
     }.

encode(#{ 'offers_third_party_delivery' := OffersThirdPartyDelivery,
          'address' := Address,
          'supports_upc_codes' := SupportsUpcCodes,
          'is_open' := IsOpen,
          'description' := Description,
          'weighted_rating_value' := WeightedRatingValue,
          'type' := Type,
          'offers_first_party_delivery' := OffersFirstPartyDelivery,
          'aggregated_rating_count' := AggregatedRatingCount,
          'pickup_enabled' := PickupEnabled,
          'cuisines' := Cuisines,
          'miles' := Miles,
          'dollar_signs' := DollarSigns,
          'delivery_enabled' := DeliveryEnabled,
          'name' := Name,
          'phone_number' := PhoneNumber,
          '_id' := Id,
          'local_hours' := LocalHours
        }) ->
    #{ 'offers_third_party_delivery' => OffersThirdPartyDelivery,
       'address' => Address,
       'supports_upc_codes' => SupportsUpcCodes,
       'is_open' => IsOpen,
       'description' => Description,
       'weighted_rating_value' => WeightedRatingValue,
       'type' => Type,
       'offers_first_party_delivery' => OffersFirstPartyDelivery,
       'aggregated_rating_count' => AggregatedRatingCount,
       'pickup_enabled' => PickupEnabled,
       'cuisines' => Cuisines,
       'miles' => Miles,
       'dollar_signs' => DollarSigns,
       'delivery_enabled' => DeliveryEnabled,
       'name' => Name,
       'phone_number' => PhoneNumber,
       '_id' => Id,
       'local_hours' => LocalHours
     }.
