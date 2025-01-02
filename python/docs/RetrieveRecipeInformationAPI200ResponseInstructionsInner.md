# RetrieveRecipeInformationAPI200ResponseInstructionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**steps** | [**List[RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner]**](RetrieveRecipeInformationAPI200ResponseInstructionsInnerStepsInner.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_instructions_inner import RetrieveRecipeInformationAPI200ResponseInstructionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseInstructionsInner from a JSON string
retrieve_recipe_information_api200_response_instructions_inner_instance = RetrieveRecipeInformationAPI200ResponseInstructionsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseInstructionsInner.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_instructions_inner_dict = retrieve_recipe_information_api200_response_instructions_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseInstructionsInner from a dict
retrieve_recipe_information_api200_response_instructions_inner_from_dict = RetrieveRecipeInformationAPI200ResponseInstructionsInner.from_dict(retrieve_recipe_information_api200_response_instructions_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


