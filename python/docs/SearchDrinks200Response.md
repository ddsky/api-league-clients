# SearchDrinks200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**drinks** | [**List[SearchDrinks200ResponseDrinksInner]**](SearchDrinks200ResponseDrinksInner.md) |  | [optional] 
**total_results** | **int** |  | [optional] 

## Example

```python
from apileague.models.search_drinks200_response import SearchDrinks200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinks200Response from a JSON string
search_drinks200_response_instance = SearchDrinks200Response.from_json(json)
# print the JSON string representation of the object
print(SearchDrinks200Response.to_json())

# convert the object into a dict
search_drinks200_response_dict = search_drinks200_response_instance.to_dict()
# create an instance of SearchDrinks200Response from a dict
search_drinks200_response_from_dict = SearchDrinks200Response.from_dict(search_drinks200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


