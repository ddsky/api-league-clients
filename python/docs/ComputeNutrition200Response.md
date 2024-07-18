# ComputeNutrition200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 
**properties** | [**List[SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**flavonoids** | [**List[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[ComputeNutrition200ResponseIngredientBreakdownInner]**](ComputeNutrition200ResponseIngredientBreakdownInner.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**weight_per_serving** | [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 

## Example

```python
from apileague.models.compute_nutrition200_response import ComputeNutrition200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ComputeNutrition200Response from a JSON string
compute_nutrition200_response_instance = ComputeNutrition200Response.from_json(json)
# print the JSON string representation of the object
print(ComputeNutrition200Response.to_json())

# convert the object into a dict
compute_nutrition200_response_dict = compute_nutrition200_response_instance.to_dict()
# create an instance of ComputeNutrition200Response from a dict
compute_nutrition200_response_from_dict = ComputeNutrition200Response.from_dict(compute_nutrition200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


