# SearchDrinks200ResponseDrinksInnerIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**name_clean** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**unit** | **str** |  | [optional] 
**measures** | [**SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures**](SearchDrinks200ResponseDrinksInnerIngredientsInnerMeasures.md) |  | [optional] 
**original** | **str** |  | [optional] 
**meta** | **List[Optional[str]]** |  | [optional] 
**original_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**aisle** | **str** |  | [optional] 
**consistency** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_drinks200_response_drinks_inner_ingredients_inner import SearchDrinks200ResponseDrinksInnerIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinks200ResponseDrinksInnerIngredientsInner from a JSON string
search_drinks200_response_drinks_inner_ingredients_inner_instance = SearchDrinks200ResponseDrinksInnerIngredientsInner.from_json(json)
# print the JSON string representation of the object
print(SearchDrinks200ResponseDrinksInnerIngredientsInner.to_json())

# convert the object into a dict
search_drinks200_response_drinks_inner_ingredients_inner_dict = search_drinks200_response_drinks_inner_ingredients_inner_instance.to_dict()
# create an instance of SearchDrinks200ResponseDrinksInnerIngredientsInner from a dict
search_drinks200_response_drinks_inner_ingredients_inner_from_dict = SearchDrinks200ResponseDrinksInnerIngredientsInner.from_dict(search_drinks200_response_drinks_inner_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


