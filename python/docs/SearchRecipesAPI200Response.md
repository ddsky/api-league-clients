# SearchRecipesAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**offset** | **int** |  | [optional] 
**number** | **int** |  | [optional] 
**recipes** | [**List[SearchRecipesAPI200ResponseRecipesInner]**](SearchRecipesAPI200ResponseRecipesInner.md) |  | [optional] 
**total_results** | **int** |  | [optional] 

## Example

```python
from apileague.models.search_recipes_api200_response import SearchRecipesAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRecipesAPI200Response from a JSON string
search_recipes_api200_response_instance = SearchRecipesAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchRecipesAPI200Response.to_json())

# convert the object into a dict
search_recipes_api200_response_dict = search_recipes_api200_response_instance.to_dict()
# create an instance of SearchRecipesAPI200Response from a dict
search_recipes_api200_response_from_dict = SearchRecipesAPI200Response.from_dict(search_recipes_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


