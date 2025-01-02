# RetrieveRecipeInformationAPI200ResponseNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weight_per_serving** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinksAPI200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinksAPI200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**flavonoids** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner]**](RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] 
**properties** | [**List[SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner]**](SearchRecipesAPI200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**nutrients** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_nutrition import RetrieveRecipeInformationAPI200ResponseNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseNutrition from a JSON string
retrieve_recipe_information_api200_response_nutrition_instance = RetrieveRecipeInformationAPI200ResponseNutrition.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseNutrition.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_nutrition_dict = retrieve_recipe_information_api200_response_nutrition_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseNutrition from a dict
retrieve_recipe_information_api200_response_nutrition_from_dict = RetrieveRecipeInformationAPI200ResponseNutrition.from_dict(retrieve_recipe_information_api200_response_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


