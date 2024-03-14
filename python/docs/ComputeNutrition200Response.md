# ComputeNutrition200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nutrients** | [**List[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner]**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 
**properties** | [**List[RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner]**](RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner.md) |  | [optional] 
**flavonoids** | [**List[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[ComputeNutrition200ResponseIngredientBreakdownInner]**](ComputeNutrition200ResponseIngredientBreakdownInner.md) |  | [optional] 
**caloric_breakdown** | [**RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown**](RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown.md) |  | [optional] 
**weight_per_serving** | [**RetrieveRecipeInformation200ResponseNutritionWeightPerServing**](RetrieveRecipeInformation200ResponseNutritionWeightPerServing.md) |  | [optional] 

## Example

```python
from apileague.models.compute_nutrition200_response import ComputeNutrition200Response

# TODO update the JSON string below
json = "{}"
# create an instance of ComputeNutrition200Response from a JSON string
compute_nutrition200_response_instance = ComputeNutrition200Response.from_json(json)
# print the JSON string representation of the object
print ComputeNutrition200Response.to_json()

# convert the object into a dict
compute_nutrition200_response_dict = compute_nutrition200_response_instance.to_dict()
# create an instance of ComputeNutrition200Response from a dict
compute_nutrition200_response_form_dict = compute_nutrition200_response.from_dict(compute_nutrition200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


