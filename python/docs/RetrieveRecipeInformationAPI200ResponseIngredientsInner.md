# RetrieveRecipeInformationAPI200ResponseIngredientsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**name_clean** | **str** |  | [optional] 
**amount** | **float** |  | [optional] 
**unit** | **str** |  | [optional] 
**measures** | [**RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures**](RetrieveRecipeInformationAPI200ResponseIngredientsInnerMeasures.md) |  | [optional] 
**original** | **str** |  | [optional] 
**meta** | **List[Optional[str]]** |  | [optional] 
**original_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**aisle** | **str** |  | [optional] 
**consistency** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_ingredients_inner import RetrieveRecipeInformationAPI200ResponseIngredientsInner

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseIngredientsInner from a JSON string
retrieve_recipe_information_api200_response_ingredients_inner_instance = RetrieveRecipeInformationAPI200ResponseIngredientsInner.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseIngredientsInner.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_ingredients_inner_dict = retrieve_recipe_information_api200_response_ingredients_inner_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseIngredientsInner from a dict
retrieve_recipe_information_api200_response_ingredients_inner_from_dict = RetrieveRecipeInformationAPI200ResponseIngredientsInner.from_dict(retrieve_recipe_information_api200_response_ingredients_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


