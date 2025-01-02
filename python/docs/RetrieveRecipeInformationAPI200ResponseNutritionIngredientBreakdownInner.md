# RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**nutrients** | [**List[SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner]**](SearchDrinksAPI200ResponseDrinksInnerNutritionNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner import RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner from a JSON string
retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner_instance = RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner_dict = retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner from a dict
retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner_from_dict = RetrieveRecipeInformationAPI200ResponseNutritionIngredientBreakdownInner.from_dict(retrieve_recipe_information_api200_response_nutrition_ingredient_breakdown_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


