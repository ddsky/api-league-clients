# ComputeNutrition200ResponseIngredientBreakdownInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**amount** | **int** |  | [optional] 
**unit** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**nutrients** | [**List[ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner]**](ComputeNutrition200ResponseIngredientBreakdownInnerNutrientsInner.md) |  | [optional] 

## Example

```python
from apileague.models.compute_nutrition200_response_ingredient_breakdown_inner import ComputeNutrition200ResponseIngredientBreakdownInner

# TODO update the JSON string below
json = "{}"
# create an instance of ComputeNutrition200ResponseIngredientBreakdownInner from a JSON string
compute_nutrition200_response_ingredient_breakdown_inner_instance = ComputeNutrition200ResponseIngredientBreakdownInner.from_json(json)
# print the JSON string representation of the object
print(ComputeNutrition200ResponseIngredientBreakdownInner.to_json())

# convert the object into a dict
compute_nutrition200_response_ingredient_breakdown_inner_dict = compute_nutrition200_response_ingredient_breakdown_inner_instance.to_dict()
# create an instance of ComputeNutrition200ResponseIngredientBreakdownInner from a dict
compute_nutrition200_response_ingredient_breakdown_inner_from_dict = ComputeNutrition200ResponseIngredientBreakdownInner.from_dict(compute_nutrition200_response_ingredient_breakdown_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


