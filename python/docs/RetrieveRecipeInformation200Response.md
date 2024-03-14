# RetrieveRecipeInformation200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**title** | **str** |  | [optional] 
**servings** | **int** |  | [optional] 
**images** | **List[Optional[str]]** |  | [optional] 
**dietary_properties** | [**RetrieveRecipeInformation200ResponseDietaryProperties**](RetrieveRecipeInformation200ResponseDietaryProperties.md) |  | [optional] 
**price_per_serving** | **float** |  | [optional] 
**times** | [**RetrieveRecipeInformation200ResponseTimes**](RetrieveRecipeInformation200ResponseTimes.md) |  | [optional] 
**nutrition** | [**RetrieveRecipeInformation200ResponseNutrition**](RetrieveRecipeInformation200ResponseNutrition.md) |  | [optional] 
**taste** | [**RetrieveRecipeInformation200ResponseTaste**](RetrieveRecipeInformation200ResponseTaste.md) |  | [optional] 
**cuisines** | **List[Optional[str]]** |  | [optional] 
**meal_types** | **List[Optional[str]]** |  | [optional] 
**occasions** | **List[Optional[str]]** |  | [optional] 
**ingredients** | [**List[RetrieveRecipeInformation200ResponseIngredientsInner]**](RetrieveRecipeInformation200ResponseIngredientsInner.md) |  | [optional] 
**instructions** | [**List[RetrieveRecipeInformation200ResponseInstructionsInner]**](RetrieveRecipeInformation200ResponseInstructionsInner.md) |  | [optional] 
**credits** | [**RetrieveRecipeInformation200ResponseCredits**](RetrieveRecipeInformation200ResponseCredits.md) |  | [optional] 
**scores** | [**RetrieveRecipeInformation200ResponseScores**](RetrieveRecipeInformation200ResponseScores.md) |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response import RetrieveRecipeInformation200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200Response from a JSON string
retrieve_recipe_information200_response_instance = RetrieveRecipeInformation200Response.from_json(json)
# print the JSON string representation of the object
print RetrieveRecipeInformation200Response.to_json()

# convert the object into a dict
retrieve_recipe_information200_response_dict = retrieve_recipe_information200_response_instance.to_dict()
# create an instance of RetrieveRecipeInformation200Response from a dict
retrieve_recipe_information200_response_form_dict = retrieve_recipe_information200_response.from_dict(retrieve_recipe_information200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


