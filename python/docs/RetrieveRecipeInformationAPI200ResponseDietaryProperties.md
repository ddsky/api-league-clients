# RetrieveRecipeInformationAPI200ResponseDietaryProperties


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**low_fodmap** | **bool** |  | [optional] 
**vegetarian** | **bool** |  | [optional] 
**vegan** | **bool** |  | [optional] 
**gluten_free** | **bool** |  | [optional] 
**dairy_free** | **bool** |  | [optional] 
**gaps** | **str** |  | [optional] 
**diets** | **List[Optional[str]]** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information_api200_response_dietary_properties import RetrieveRecipeInformationAPI200ResponseDietaryProperties

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformationAPI200ResponseDietaryProperties from a JSON string
retrieve_recipe_information_api200_response_dietary_properties_instance = RetrieveRecipeInformationAPI200ResponseDietaryProperties.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformationAPI200ResponseDietaryProperties.to_json())

# convert the object into a dict
retrieve_recipe_information_api200_response_dietary_properties_dict = retrieve_recipe_information_api200_response_dietary_properties_instance.to_dict()
# create an instance of RetrieveRecipeInformationAPI200ResponseDietaryProperties from a dict
retrieve_recipe_information_api200_response_dietary_properties_from_dict = RetrieveRecipeInformationAPI200ResponseDietaryProperties.from_dict(retrieve_recipe_information_api200_response_dietary_properties_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


