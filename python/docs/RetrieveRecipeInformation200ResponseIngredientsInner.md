# RetrieveRecipeInformation200ResponseIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**name_clean** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**measures** | [**RetrieveRecipeInformation200ResponseIngredientsInnerMeasures**](RetrieveRecipeInformation200ResponseIngredientsInnerMeasures.md) |  | [optional] 
**original** | **str** |  | [optional] 
**meta** | **List[Optional[str]]** |  | [optional] 
**original_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**aisle** | **str** |  | [optional] 
**consistency** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_ingredients_inner import RetrieveRecipeInformation200ResponseIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseIngredientsInner from a JSON string
retrieve_recipe_information200_response_ingredients_inner_instance = RetrieveRecipeInformation200ResponseIngredientsInner.from_json(json)
# print the JSON string representation of the object
print RetrieveRecipeInformation200ResponseIngredientsInner.to_json()

# convert the object into a dict
retrieve_recipe_information200_response_ingredients_inner_dict = retrieve_recipe_information200_response_ingredients_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseIngredientsInner from a dict
retrieve_recipe_information200_response_ingredients_inner_form_dict = retrieve_recipe_information200_response_ingredients_inner.from_dict(retrieve_recipe_information200_response_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


