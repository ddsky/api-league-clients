# RetrieveRecipeInformation200ResponseInstructionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**steps** | [**List[RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner]**](RetrieveRecipeInformation200ResponseInstructionsInnerStepsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_instructions_inner import RetrieveRecipeInformation200ResponseInstructionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseInstructionsInner from a JSON string
retrieve_recipe_information200_response_instructions_inner_instance = RetrieveRecipeInformation200ResponseInstructionsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformation200ResponseInstructionsInner.to_json())

# convert the object into a dict
retrieve_recipe_information200_response_instructions_inner_dict = retrieve_recipe_information200_response_instructions_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseInstructionsInner from a dict
retrieve_recipe_information200_response_instructions_inner_from_dict = RetrieveRecipeInformation200ResponseInstructionsInner.from_dict(retrieve_recipe_information200_response_instructions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


