# SearchRestaurantsAPI200ResponseRestaurantsInnerAddress


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**zipcode** | **str** |  | [optional] 
**country** | **str** |  | [optional] 
**city** | **str** |  | [optional] 
**latitude** | **float** |  | [optional] 
**lon** | **float** |  | [optional] 
**street_addr_2** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**street_addr** | **str** |  | [optional] 
**lat** | **float** |  | [optional] 
**longitude** | **float** |  | [optional] 

## Example

```python
from apileague.models.search_restaurants_api200_response_restaurants_inner_address import SearchRestaurantsAPI200ResponseRestaurantsInnerAddress

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRestaurantsAPI200ResponseRestaurantsInnerAddress from a JSON string
search_restaurants_api200_response_restaurants_inner_address_instance = SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.from_json(json)
# print the JSON string representation of the object
print(SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.to_json())

# convert the object into a dict
search_restaurants_api200_response_restaurants_inner_address_dict = search_restaurants_api200_response_restaurants_inner_address_instance.to_dict()
# create an instance of SearchRestaurantsAPI200ResponseRestaurantsInnerAddress from a dict
search_restaurants_api200_response_restaurants_inner_address_from_dict = SearchRestaurantsAPI200ResponseRestaurantsInnerAddress.from_dict(search_restaurants_api200_response_restaurants_inner_address_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


