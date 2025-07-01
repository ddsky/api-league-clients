# SearchGamesAPI200ResponseResultsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image** | **str** |  | [optional] 
**short_description** | **str** |  | [optional] 
**year** | **int** |  | [optional] 
**link** | **str** |  | [optional] 
**rating** | [**SearchGamesAPI200ResponseResultsInnerRating**](SearchGamesAPI200ResponseResultsInnerRating.md) |  | [optional] 
**adult_only** | **bool** |  | [optional] 
**screenshots** | **List[Optional[str]]** |  | [optional] 
**platforms** | [**List[SearchGamesAPI200ResponseResultsInnerPlatformsInner]**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**micro_trailer** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**genre** | **str** |  | [optional] 
**id** | **int** |  | [optional] 
**gameplay** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_games_api200_response_results_inner import SearchGamesAPI200ResponseResultsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGamesAPI200ResponseResultsInner from a JSON string
search_games_api200_response_results_inner_instance = SearchGamesAPI200ResponseResultsInner.from_json(json)
# print the JSON string representation of the object
print(SearchGamesAPI200ResponseResultsInner.to_json())

# convert the object into a dict
search_games_api200_response_results_inner_dict = search_games_api200_response_results_inner_instance.to_dict()
# create an instance of SearchGamesAPI200ResponseResultsInner from a dict
search_games_api200_response_results_inner_from_dict = SearchGamesAPI200ResponseResultsInner.from_dict(search_games_api200_response_results_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


