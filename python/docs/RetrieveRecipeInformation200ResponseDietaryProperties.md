# RetrieveRecipeInformation200ResponseDietaryProperties


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
from apileague.models.retrieve_recipe_information200_response_dietary_properties import RetrieveRecipeInformation200ResponseDietaryProperties

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseDietaryProperties from a JSON string
retrieve_recipe_information200_response_dietary_properties_instance = RetrieveRecipeInformation200ResponseDietaryProperties.from_json(json)
# print the JSON string representation of the object
print RetrieveRecipeInformation200ResponseDietaryProperties.to_json()

# convert the object into a dict
retrieve_recipe_information200_response_dietary_properties_dict = retrieve_recipe_information200_response_dietary_properties_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseDietaryProperties from a dict
retrieve_recipe_information200_response_dietary_properties_form_dict = retrieve_recipe_information200_response_dietary_properties.from_dict(retrieve_recipe_information200_response_dietary_properties_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


