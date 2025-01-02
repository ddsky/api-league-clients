# SearchDrinksAPI200ResponseDrinksInnerIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**name_clean** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**unit** | **str** |  | [optional] 
**measures** | [**SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures**](SearchDrinksAPI200ResponseDrinksInnerIngredientsInnerMeasures.md) |  | [optional] 
**original** | **str** |  | [optional] 
**meta** | **List[Optional[str]]** |  | [optional] 
**original_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**aisle** | **str** |  | [optional] 
**consistency** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_drinks_api200_response_drinks_inner_ingredients_inner import SearchDrinksAPI200ResponseDrinksInnerIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinksAPI200ResponseDrinksInnerIngredientsInner from a JSON string
search_drinks_api200_response_drinks_inner_ingredients_inner_instance = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.from_json(json)
# print the JSON string representation of the object
print(SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.to_json())

# convert the object into a dict
search_drinks_api200_response_drinks_inner_ingredients_inner_dict = search_drinks_api200_response_drinks_inner_ingredients_inner_instance.to_dict()
# create an instance of SearchDrinksAPI200ResponseDrinksInnerIngredientsInner from a dict
search_drinks_api200_response_drinks_inner_ingredients_inner_from_dict = SearchDrinksAPI200ResponseDrinksInnerIngredientsInner.from_dict(search_drinks_api200_response_drinks_inner_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


