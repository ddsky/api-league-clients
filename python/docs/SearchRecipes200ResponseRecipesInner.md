# SearchRecipes200ResponseRecipesInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**images** | **List[Optional[str]]** |  | [optional] 
**nutrition** | [**SearchRecipes200ResponseRecipesInnerNutrition**](SearchRecipes200ResponseRecipesInnerNutrition.md) |  | [optional] 
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_recipes200_response_recipes_inner import SearchRecipes200ResponseRecipesInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchRecipes200ResponseRecipesInner from a JSON string
search_recipes200_response_recipes_inner_instance = SearchRecipes200ResponseRecipesInner.from_json(json)
# print the JSON string representation of the object
print SearchRecipes200ResponseRecipesInner.to_json()

# convert the object into a dict
search_recipes200_response_recipes_inner_dict = search_recipes200_response_recipes_inner_instance.to_dict()
# create an instance of SearchRecipes200ResponseRecipesInner from a dict
search_recipes200_response_recipes_inner_form_dict = search_recipes200_response_recipes_inner.from_dict(search_recipes200_response_recipes_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


