# SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**unit** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**nutrients** | [**List[SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner]**](SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner import SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner from a JSON string
search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_instance = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.from_json(json)
# print the JSON string representation of the object
print(SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.to_json())

# convert the object into a dict
search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_dict = search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_instance.to_dict()
# create an instance of SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner from a dict
search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_from_dict = SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.from_dict(search_drinks200_response_drinks_inner_nutrition_ingredient_breakdown_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


