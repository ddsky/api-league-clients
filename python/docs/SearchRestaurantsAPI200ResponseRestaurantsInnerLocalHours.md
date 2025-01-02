# SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operational** | [**SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**delivery** | [**SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**pickup** | [**SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 
**dine_in** | [**SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational**](SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHoursOperational.md) |  | [optional] 

## Example

```python
from apileague.models.search_restaurants_api200_response_restaurants_inner_local_hours import SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours from a JSON string
search_restaurants_api200_response_restaurants_inner_local_hours_instance = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.from_json(json)
# print the JSON string representation of the object
print(SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.to_json())

# convert the object into a dict
search_restaurants_api200_response_restaurants_inner_local_hours_dict = search_restaurants_api200_response_restaurants_inner_local_hours_instance.to_dict()
# create an instance of SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours from a dict
search_restaurants_api200_response_restaurants_inner_local_hours_from_dict = SearchRestaurantsAPI200ResponseRestaurantsInnerLocalHours.from_dict(search_restaurants_api200_response_restaurants_inner_local_hours_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


