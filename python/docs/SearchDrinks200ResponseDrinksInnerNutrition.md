# SearchDrinks200ResponseDrinksInnerNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weight_per_serving** | [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**flavonoids** | [**List[SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner]**](SearchDrinks200ResponseDrinksInnerNutritionIngredientBreakdownInner.md) |  | [optional] 
**properties** | [**List[SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**nutrients** | [**List[SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_drinks200_response_drinks_inner_nutrition import SearchDrinks200ResponseDrinksInnerNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of SearchDrinks200ResponseDrinksInnerNutrition from a JSON string
search_drinks200_response_drinks_inner_nutrition_instance = SearchDrinks200ResponseDrinksInnerNutrition.from_json(json)
# print the JSON string representation of the object
print(SearchDrinks200ResponseDrinksInnerNutrition.to_json())

# convert the object into a dict
search_drinks200_response_drinks_inner_nutrition_dict = search_drinks200_response_drinks_inner_nutrition_instance.to_dict()
# create an instance of SearchDrinks200ResponseDrinksInnerNutrition from a dict
search_drinks200_response_drinks_inner_nutrition_from_dict = SearchDrinks200ResponseDrinksInnerNutrition.from_dict(search_drinks200_response_drinks_inner_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


