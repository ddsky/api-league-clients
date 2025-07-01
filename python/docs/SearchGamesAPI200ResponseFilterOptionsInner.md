# SearchGamesAPI200ResponseFilterOptionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**filter_type** | **str** |  | [optional] 
**key** | **str** |  | [optional] 
**values** | [**List[SearchGamesAPI200ResponseFilterOptionsInnerValuesInner]**](SearchGamesAPI200ResponseFilterOptionsInnerValuesInner.md) |  | [optional] 
**filter_connection** | **str** |  | [optional] 

## Example

```python
from apileague.models.search_games_api200_response_filter_options_inner import SearchGamesAPI200ResponseFilterOptionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGamesAPI200ResponseFilterOptionsInner from a JSON string
search_games_api200_response_filter_options_inner_instance = SearchGamesAPI200ResponseFilterOptionsInner.from_json(json)
# print the JSON string representation of the object
print(SearchGamesAPI200ResponseFilterOptionsInner.to_json())

# convert the object into a dict
search_games_api200_response_filter_options_inner_dict = search_games_api200_response_filter_options_inner_instance.to_dict()
# create an instance of SearchGamesAPI200ResponseFilterOptionsInner from a dict
search_games_api200_response_filter_options_inner_from_dict = SearchGamesAPI200ResponseFilterOptionsInner.from_dict(search_games_api200_response_filter_options_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


