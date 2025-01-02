# RetrieveRecipeInformationAPI200ResponseTaste


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fattiness** | **float** |  | [optional] 
**spiciness** | **int** |  | [optional] 
**saltiness** | **int** |  | [optional] 
**bitterness** | **float** |  | [optional] 
**savoriness** | **float** |  | [optional] 
**sweetness** | **float** |  | [optional] 
**sourness** | **float** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_taste import RetrieveRecipeInformationAPI200ResponseTaste

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseTaste from a JSON string
retrieve_recipe_information_api200_response_taste_instance = RetrieveRecipeInformationAPI200ResponseTaste.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseTaste.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_taste_dict = retrieve_recipe_information_api200_response_taste_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseTaste from a dict
retrieve_recipe_information_api200_response_taste_from_dict = RetrieveRecipeInformationAPI200ResponseTaste.from_dict(retrieve_recipe_information_api200_response_taste_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


