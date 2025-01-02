# SearchDrinksAPI200ResponseDrinksInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flavors** | **List[Optional[str]]** |  | [optional] 
**instructions** | [**List[SearchDrinksAPI200ResponseDrinksInnerInstructionsInner]**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInner.md) |  | [optional] 
**images** | **List[Optional[str]]** |  | [optional] 
**nutrition** | [**SearchDrinksAPI200ResponseDrinksInnerNutrition**](SearchDrinksAPI200ResponseDrinksInnerNutrition.md) |  | [optional] 
**glass_type** | **str** |  | [optional] 
**credits** | [**SearchDrinksAPI200ResponseDrinksInnerCredits**](SearchDrinksAPI200ResponseDrinksInnerCredits.md) |  | [optional] 
**price_per_serving** | **float** |  | [optional] 
**description** | **str** |  | [optional] 
**ingredients** | [**List[SearchDrinksAPI200ResponseDrinksInnerIngredientsInner]**](SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.md) |  | [optional] 
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 
**cuisines** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from apileague.models.search_drinks_api200_response_drinks_inner import SearchDrinksAPI200ResponseDrinksInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinksAPI200ResponseDrinksInner from a JSON string
search_drinks_api200_response_drinks_inner_instance = SearchDrinksAPI200ResponseDrinksInner.from_json(json)
# print the JSON string representation of the object
print(SearchDrinksAPI200ResponseDrinksInner.to_json())

# convert the object into a dict
search_drinks_api200_response_drinks_inner_dict = search_drinks_api200_response_drinks_inner_instance.to_dict()
# create an instance of SearchDrinksAPI200ResponseDrinksInner from a dict
search_drinks_api200_response_drinks_inner_from_dict = SearchDrinksAPI200ResponseDrinksInner.from_dict(search_drinks_api200_response_drinks_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


