# RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **int** |  | [optional] 
**ingredients** | [**List[SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]**](SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 
**equipment** | [**List[SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]**](SearchDrinks200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 
**step** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_instructions_inner_steps_inner import RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner from a JSON string
retrieve_recipe_information200_response_instructions_inner_steps_inner_instance = RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.to_json())

# convert the object into a dict
retrieve_recipe_information200_response_instructions_inner_steps_inner_dict = retrieve_recipe_information200_response_instructions_inner_steps_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner from a dict
retrieve_recipe_information200_response_instructions_inner_steps_inner_from_dict = RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.from_dict(retrieve_recipe_information200_response_instructions_inner_steps_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


