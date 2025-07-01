# FindSimilarGamesAPI200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**short_description** | **str** |  | [optional] 
**micro_trailer** | **str** |  | [optional] 
**year** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**genre** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**rating** | [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] 
**id** | **int** |  | [optional] 
**adult_only** | **bool** |  | [optional] 
**screenshots** | **List[Optional[str]]** |  | [optional] 
**gameplay** | **str** |  | [optional] 

## Example

```python
from apileague.models.find_similar_games_api200_response_results_inner import FindSimilarGamesAPI200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of FindSimilarGamesAPI200ResponseResultsInner from a JSON string
find_similar_games_api200_response_results_inner_instance = FindSimilarGamesAPI200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(FindSimilarGamesAPI200ResponseResultsInner.to_json())

# convert the object into a dict
find_similar_games_api200_response_results_inner_dict = find_similar_games_api200_response_results_inner_instance.to_dict()
# create an instance of FindSimilarGamesAPI200ResponseResultsInner from a dict
find_similar_games_api200_response_results_inner_from_dict = FindSimilarGamesAPI200ResponseResultsInner.from_dict(find_similar_games_api200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


