# RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**number** | **int** |  | [optional] 
**ingredients** | [**List[SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 
**equipment** | [**List[SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner]**](SearchDrinksAPI200ResponseDrinksInnerInstructionsInnerStepsInnerIngredientsInner.md) |  | [optional] 
**step** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_instructions_inner_steps_inner import RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner from a JSON string
retrieve_recipe_information_api200_response_instructions_inner_steps_inner_instance = RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_instructions_inner_steps_inner_dict = retrieve_recipe_information_api200_response_instructions_inner_steps_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner from a dict
retrieve_recipe_information_api200_response_instructions_inner_steps_inner_from_dict = RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.from_dict(retrieve_recipe_information_api200_response_instructions_inner_steps_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


