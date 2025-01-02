# ComputeNutritionAPI200ResponseIngredientBreakdownInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**unit** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**nutrients** | [**List[ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner]**](ComputeNutritionAPI200ResponseIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.compute_nutrition_api200_response_ingredient_breakdown_inner import ComputeNutritionAPI200ResponseIngredientBreakdownInner

# TODO update the JSON string below
json = "{}"
# create an instance of ComputeNutritionAPI200ResponseIngredientBreakdownInner from a JSON string
compute_nutrition_api200_response_ingredient_breakdown_inner_instance = ComputeNutritionAPI200ResponseIngredientBreakdownInner.from_json(json)
# print the JSON string representation of the object
print(ComputeNutritionAPI200ResponseIngredientBreakdownInner.to_json())

# convert the object into a dict
compute_nutrition_api200_response_ingredient_breakdown_inner_dict = compute_nutrition_api200_response_ingredient_breakdown_inner_instance.to_dict()
# create an instance of ComputeNutritionAPI200ResponseIngredientBreakdownInner from a dict
compute_nutrition_api200_response_ingredient_breakdown_inner_from_dict = ComputeNutritionAPI200ResponseIngredientBreakdownInner.from_dict(compute_nutrition_api200_response_ingredient_breakdown_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


