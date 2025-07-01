# FindSimilarGamesAPI200Response


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**results** | [**List[FindSimilarGamesAPI200ResponseResultsInner]**](FindSimilarGamesAPI200ResponseResultsInner.md) |  | [optional] 

## Example

```python
from apileague.models.find_similar_games_api200_response import FindSimilarGamesAPI200Response

# TODO update the JSON string below
json = "{}"
# create an instance of FindSimilarGamesAPI200Response from a JSON string
find_similar_games_api200_response_instance = FindSimilarGamesAPI200Response.from_json(json)
# print the JSON string representation of the object
print(FindSimilarGamesAPI200Response.to_json())

# convert the object into a dict
find_similar_games_api200_response_dict = find_similar_games_api200_response_instance.to_dict()
# create an instance of FindSimilarGamesAPI200Response from a dict
find_similar_games_api200_response_from_dict = FindSimilarGamesAPI200Response.from_dict(find_similar_games_api200_response_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


