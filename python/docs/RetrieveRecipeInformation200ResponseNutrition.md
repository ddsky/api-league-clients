# RetrieveRecipeInformation200ResponseNutrition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**weight_per_serving** | [**SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing**](SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing.md) |  | [optional] 
**caloric_breakdown** | [**SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown**](SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown.md) |  | [optional] 
**flavonoids** | [**List[SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner]**](SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner.md) |  | [optional] 
**ingredient_breakdown** | [**List[RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner]**](RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.md) |  | [optional] 
**properties** | [**List[SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner]**](SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner.md) |  | [optional] 
**nutrients** | [**List[SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_nutrition import RetrieveRecipeInformation200ResponseNutrition

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseNutrition from a JSON string
retrieve_recipe_information200_response_nutrition_instance = RetrieveRecipeInformation200ResponseNutrition.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformation200ResponseNutrition.to_json())

# convert the object into a dict
retrieve_recipe_information200_response_nutrition_dict = retrieve_recipe_information200_response_nutrition_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseNutrition from a dict
retrieve_recipe_information200_response_nutrition_from_dict = RetrieveRecipeInformation200ResponseNutrition.from_dict(retrieve_recipe_information200_response_nutrition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


