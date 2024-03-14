# OpenapiClient::SearchRestaurants200ResponseRestaurantsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offers_third_party_delivery** | **Boolean** |  | [optional] |
| **address** | [**SearchRestaurants200ResponseRestaurantsInnerAddress**](SearchRestaurants200ResponseRestaurantsInnerAddress.md) |  | [optional] |
| **supports_upc_codes** | **Boolean** |  | [optional] |
| **is_open** | **Boolean** |  | [optional] |
| **description** | **String** |  | [optional] |
| **weighted_rating_value** | **Integer** |  | [optional] |
| **type** | **String** |  | [optional] |
| **offers_first_party_delivery** | **Boolean** |  | [optional] |
| **aggregated_rating_count** | **Integer** |  | [optional] |
| **pickup_enabled** | **Boolean** |  | [optional] |
| **cuisines** | **Array&lt;String&gt;** |  | [optional] |
| **miles** | **Float** |  | [optional] |
| **dollar_signs** | **Integer** |  | [optional] |
| **delivery_enabled** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **phone_number** | **Float** |  | [optional] |
| **_id** | **String** |  | [optional] |
| **local_hours** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHours**](SearchRestaurants200ResponseRestaurantsInnerLocalHours.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchRestaurants200ResponseRestaurantsInner.new(
  offers_third_party_delivery: null,
  address: null,
  supports_upc_codes: null,
  is_open: null,
  description: null,
  weighted_rating_value: null,
  type: null,
  offers_first_party_delivery: null,
  aggregated_rating_count: null,
  pickup_enabled: null,
  cuisines: null,
  miles: null,
  dollar_signs: null,
  delivery_enabled: null,
  name: null,
  phone_number: null,
  _id: null,
  local_hours: null
)
```

