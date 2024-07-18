# RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**nutrients** | [**List[SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner import RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from a JSON string
retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_instance = RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.to_json())

# convert the object into a dict
retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_dict = retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner from a dict
retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_from_dict = RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner.from_dict(retrieve_recipe_information200_response_nutrition_ingredient_breakdown_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


