# RetrieveGameById200ResponsePlaytime


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**percentiles** | **List[int]** |  | [optional] 
**min** | **int** |  | [optional] 
**median** | **int** |  | [optional] 
**max** | **int** |  | [optional] 
**mean** | **float** |  | [optional] 
**mentions** | **int** |  | [optional] 

## Example

```python
from apileague.models.retrieve_game_by_id200_response_playtime import RetrieveGameById200ResponsePlaytime

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveGameById200ResponsePlaytime from a JSON string
retrieve_game_by_id200_response_playtime_instance = RetrieveGameById200ResponsePlaytime.from_json(json)
# print the JSON string representation of the object
print(RetrieveGameById200ResponsePlaytime.to_json())

# convert the object into a dict
retrieve_game_by_id200_response_playtime_dict = retrieve_game_by_id200_response_playtime_instance.to_dict()
# create an instance of RetrieveGameById200ResponsePlaytime from a dict
retrieve_game_by_id200_response_playtime_from_dict = RetrieveGameById200ResponsePlaytime.from_dict(retrieve_game_by_id200_response_playtime_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


