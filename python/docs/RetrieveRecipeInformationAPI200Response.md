# RetrieveRecipeInformationAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 
**servings** | **int** |  | [optional] 
**images** | **List[Optional[str]]** |  | [optional] 
**dietary_properties** | [**RetrieveRecipeInformationAPI200ResponseDietaryProperties**](RetrieveRecipeInformationAPI200ResponseDietaryProperties.md) |  | [optional] 
**price_per_serving** | **float** |  | [optional] 
**times** | [**RetrieveRecipeInformationAPI200ResponseTimes**](RetrieveRecipeInformationAPI200ResponseTimes.md) |  | [optional] 
**nutrition** | [**RetrieveRecipeInformationAPI200ResponseNutrition**](RetrieveRecipeInformationAPI200ResponseNutrition.md) |  | [optional] 
**taste** | [**RetrieveRecipeInformationAPI200ResponseTaste**](RetrieveRecipeInformationAPI200ResponseTaste.md) |  | [optional] 
**cuisines** | **List[Optional[str]]** |  | [optional] 
**meal_types** | **List[Optional[str]]** |  | [optional] 
**occasions** | **List[Optional[str]]** |  | [optional] 
**ingredients** | [**List[RetrieveRecipeInformationAPI200ResponseIngredientsInner]**](RetrieveRecipeInformationAPI200ResponseIngredientsInner.md) |  | [optional] 
**instructions** | [**List[RetrieveRecipeInformationAPI200ResponseInstructionsInner]**](RetrieveRecipeInformationAPI200ResponseInstructionsInner.md) |  | [optional] 
**credits** | [**RetrieveRecipeInformationAPI200ResponseCredits**](RetrieveRecipeInformationAPI200ResponseCredits.md) |  | [optional] 
**scores** | [**RetrieveRecipeInformationAPI200ResponseScores**](RetrieveRecipeInformationAPI200ResponseScores.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response import RetrieveRecipeInformationAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200Response from a JSON string
retrieve_recipe_information_api200_response_instance = RetrieveRecipeInformationAPI200Response.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200Response.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_dict = retrieve_recipe_information_api200_response_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200Response from a dict
retrieve_recipe_information_api200_response_from_dict = RetrieveRecipeInformationAPI200Response.from_dict(retrieve_recipe_information_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


