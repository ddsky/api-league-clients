# SearchGamesAPI200ResponseActiveFilterOptionsInner


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **str** |  | [optional] 
**connection** | **str** |  | [optional] 
**values** | [**List[SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner]**](SearchGamesAPI200ResponseActiveFilterOptionsInnerValuesInner.md) |  | [optional] 

## Example

```python
from apileague.models.search_games_api200_response_active_filter_options_inner import SearchGamesAPI200ResponseActiveFilterOptionsInner

# TODO update the JSON string below
json = "{}"
# create an instance of SearchGamesAPI200ResponseActiveFilterOptionsInner from a JSON string
search_games_api200_response_active_filter_options_inner_instance = SearchGamesAPI200ResponseActiveFilterOptionsInner.from_json(json)
# print the JSON string representation of the object
print(SearchGamesAPI200ResponseActiveFilterOptionsInner.to_json())

# convert the object into a dict
search_games_api200_response_active_filter_options_inner_dict = search_games_api200_response_active_filter_options_inner_instance.to_dict()
# create an instance of SearchGamesAPI200ResponseActiveFilterOptionsInner from a dict
search_games_api200_response_active_filter_options_inner_from_dict = SearchGamesAPI200ResponseActiveFilterOptionsInner.from_dict(search_games_api200_response_active_filter_options_inner_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


