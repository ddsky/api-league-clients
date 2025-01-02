# ComputeNutritionAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 
**properties** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**flavonoids** | [**List[SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[ComputeNutritionAPI200ResponseIngredientBreakdownInner]**](ComputeNutritionAPI200ResponseIngredientBreakdownInner.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 

## Example

```python
from apileague.models.compute_nutrition_api200_response import ComputeNutritionAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ComputeNutritionAPI200Response from a JSON string
compute_nutrition_api200_response_instance = ComputeNutritionAPI200Response.from_json(json)
# print the JSON string representation of the object
print(ComputeNutritionAPI200Response.to_json())

# convert the object into a dict
compute_nutrition_api200_response_dict = compute_nutrition_api200_response_instance.to_dict()
# create an instance of ComputeNutritionAPI200Response from a dict
compute_nutrition_api200_response_from_dict = ComputeNutritionAPI200Response.from_dict(compute_nutrition_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


