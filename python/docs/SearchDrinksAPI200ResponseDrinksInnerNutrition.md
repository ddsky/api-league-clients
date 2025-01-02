# SearchDrinksAPI200ResponseDrinksInnerNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**flavonoids** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionIngredientBreakdownInner.md) |  | [optional] 
**properties** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**nutrients** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_drinks_api200_response_drinks_inner_nutrition import SearchDrinksAPI200ResponseDrinksInnerNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinksAPI200ResponseDrinksInnerNutrition from a JSON string
search_drinks_api200_response_drinks_inner_nutrition_instance = SearchDrinksAPI200ResponseDrinksInnerNutrition.from_json(json)
# print the JSON string representation of the object
print(SearchDrinksAPI200ResponseDrinksInnerNutrition.to_json())

# convert the object into a dict
search_drinks_api200_response_drinks_inner_nutrition_dict = search_drinks_api200_response_drinks_inner_nutrition_instance.to_dict()
# create an instance of SearchDrinksAPI200ResponseDrinksInnerNutrition from a dict
search_drinks_api200_response_drinks_inner_nutrition_from_dict = SearchDrinksAPI200ResponseDrinksInnerNutrition.from_dict(search_drinks_api200_response_drinks_inner_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


