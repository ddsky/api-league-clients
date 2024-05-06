# RetrieveRecipeInformation200ResponseScores


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**meta_score** | **float** |  | [optional] 
**weight_watcher_smart_points** | **int** |  | [optional] 
**health_score** | **int** |  | [optional] 

## Example

```python
from apileague.models.retrieve_recipe_information200_response_scores import RetrieveRecipeInformation200ResponseScores

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveRecipeInformation200ResponseScores from a JSON string
retrieve_recipe_information200_response_scores_instance = RetrieveRecipeInformation200ResponseScores.from_json(json)
# print the JSON string representation of the object
print(RetrieveRecipeInformation200ResponseScores.to_json())

# convert the object into a dict
retrieve_recipe_information200_response_scores_dict = retrieve_recipe_information200_response_scores_instance.to_dict()
# create an instance of RetrieveRecipeInformation200ResponseScores from a dict
retrieve_recipe_information200_response_scores_from_dict = RetrieveRecipeInformation200ResponseScores.from_dict(retrieve_recipe_information200_response_scores_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


