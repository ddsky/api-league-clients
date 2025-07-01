# SearchGamesAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sorting** | **object** |  | [optional] 
**active_filter_options** | [**List[SearchGamesAPI200ResponseActiveFilterOptionsInner]**](SearchGamesAPI200ResponseActiveFilterOptionsInner.md) |  | [optional] 
**query** | **str** |  | [optional] 
**total_results** | **int** |  | [optional] 
**limit** | **int** |  | [optional] 
**offset** | **int** |  | [optional] 
**results** | [**List[SearchGamesAPI200ResponseResultsInner]**](SearchGamesAPI200ResponseResultsInner.md) |  | [optional] 
**filter_options** | [**List[SearchGamesAPI200ResponseFilterOptionsInner]**](SearchGamesAPI200ResponseFilterOptionsInner.md) |  | [optional] 
**sorting_options** | [**List[SearchGamesAPI200ResponseSortingOptionsInner]**](SearchGamesAPI200ResponseSortingOptionsInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_games_api200_response import SearchGamesAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGamesAPI200Response from a JSON string
search_games_api200_response_instance = SearchGamesAPI200Response.from_json(json)
# print the JSON string representation of the object
print(SearchGamesAPI200Response.to_json())

# convert the object into a dict
search_games_api200_response_dict = search_games_api200_response_instance.to_dict()
# create an instance of SearchGamesAPI200Response from a dict
search_games_api200_response_from_dict = SearchGamesAPI200Response.from_dict(search_games_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


