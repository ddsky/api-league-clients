# SearchRestaurants200ResponseRestaurantsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offers_third_party_delivery** | **bool** |  | [optional] 
**address** | [**SearchRestaurants200ResponseRestaurantsInnerAddress**](SearchRestaurants200ResponseRestaurantsInnerAddress.md) |  | [optional] 
**supports_upc_codes** | **bool** |  | [optional] 
**is_open** | **bool** |  | [optional] 
**description** | **str** |  | [optional] 
**weighted_rating_value** | **int** |  | [optional] 
**type** | **str** |  | [optional] 
**offers_first_party_delivery** | **bool** |  | [optional] 
**aggregated_rating_count** | **int** |  | [optional] 
**pickup_enabled** | **bool** |  | [optional] 
**cuisines** | **List[Optional[str]]** |  | [optional] 
**miles** | **float** |  | [optional] 
**dollar_signs** | **int** |  | [optional] 
**delivery_enabled** | **bool** |  | [optional] 
**name** | **str** |  | [optional] 
**phone_number** | **float** |  | [optional] 
**id** | **str** |  | [optional] 
**local_hours** | [**SearchRestaurants200ResponseRestaurantsInnerLocalHours**](SearchRestaurants200ResponseRestaurantsInnerLocalHours.md) |  | [optional] 

## Example

```python
from apileague.models.search_restaurants200_response_restaurants_inner import SearchRestaurants200ResponseRestaurantsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRestaurants200ResponseRestaurantsInner from a JSON string
search_restaurants200_response_restaurants_inner_instance = SearchRestaurants200ResponseRestaurantsInner.from_json(json)
# print the JSON string representation of the object
print(SearchRestaurants200ResponseRestaurantsInner.to_json())

# convert the object into a dict
search_restaurants200_response_restaurants_inner_dict = search_restaurants200_response_restaurants_inner_instance.to_dict()
# create an instance of SearchRestaurants200ResponseRestaurantsInner from a dict
search_restaurants200_response_restaurants_inner_from_dict = SearchRestaurants200ResponseRestaurantsInner.from_dict(search_restaurants200_response_restaurants_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


