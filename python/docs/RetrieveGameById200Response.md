# RetrieveGameById200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**image** | **str** |  | [optional] 
**gameplay** | **str** |  | [optional] 
**link** | **str** |  | [optional] 
**x_url** | **str** |  | [optional] 
**rating** | [**RetrieveGameById200ResponseRating**](RetrieveGameById200ResponseRating.md) |  | [optional] 
**description** | **str** |  | [optional] 
**short_description** | **str** |  | [optional] 
**release_date** | **str** |  | [optional] 
**developer** | **str** |  | [optional] 
**playtime** | [**RetrieveGameById200ResponsePlaytime**](RetrieveGameById200ResponsePlaytime.md) |  | [optional] 
**platforms** | [**List[SearchGamesAPI200ResponseResultsInnerPlatformsInner]**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**tags** | **List[Optional[str]]** |  | [optional] 
**genres** | [**List[SearchGamesAPI200ResponseResultsInnerPlatformsInner]**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**genre** | **str** |  | [optional] 
**themes** | [**List[SearchGamesAPI200ResponseResultsInnerPlatformsInner]**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**adult_only** | **bool** |  | [optional] 
**play_modes** | [**List[SearchGamesAPI200ResponseResultsInnerPlatformsInner]**](SearchGamesAPI200ResponseResultsInnerPlatformsInner.md) |  | [optional] 
**screenshots** | **List[Optional[str]]** |  | [optional] 
**videos** | **List[Optional[str]]** |  | [optional] 
**offers** | [**List[RetrieveGameById200ResponseOffersInner]**](RetrieveGameById200ResponseOffersInner.md) |  | [optional] 
**official_stores** | [**List[RetrieveGameById200ResponseOfficialStoresInner]**](RetrieveGameById200ResponseOfficialStoresInner.md) |  | [optional] 
**micro_trailer** | **str** |  | [optional] 

## Example

```python
from apileague.models.retrieve_game_by_id200_response import RetrieveGameById200Response

# TODO update the JSON string below
json = "{}"
# create an instance of RetrieveGameById200Response from a JSON string
retrieve_game_by_id200_response_instance = RetrieveGameById200Response.from_json(json)
# print the JSON string representation of the object
print(RetrieveGameById200Response.to_json())

# convert the object into a dict
retrieve_game_by_id200_response_dict = retrieve_game_by_id200_response_instance.to_dict()
# create an instance of RetrieveGameById200Response from a dict
retrieve_game_by_id200_response_from_dict = RetrieveGameById200Response.from_dict(retrieve_game_by_id200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


