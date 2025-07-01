# RetrieveGameById200ResponseRating


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**count** | **int** |  | [optional] 
**count_critics** | **int** |  | [optional] 
**mean_players** | **float** |  | [optional] 
**mean_critics** | **float** |  | [optional] 
**mean** | **float** |  | [optional] 
**count_players** | **int** |  | [optional] 

## Example

```python
from apileague.models.retrieve_game_by_id200_response_rating import RetrieveGameById200ResponseRating

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveGameById200ResponseRating from a JSON string
retrieve_game_by_id200_response_rating_instance = RetrieveGameById200ResponseRating.from_json(json)
# print the JSON string representation of the object
print(RetrieveGameById200ResponseRating.to_json())

# convert the object into a dict
retrieve_game_by_id200_response_rating_dict = retrieve_game_by_id200_response_rating_instance.to_dict()
# create an instance of RetrieveGameById200ResponseRating from a dict
retrieve_game_by_id200_response_rating_from_dict = RetrieveGameById200ResponseRating.from_dict(retrieve_game_by_id200_response_rating_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


