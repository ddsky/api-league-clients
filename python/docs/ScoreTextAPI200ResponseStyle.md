# ScoreTextAPI200ResponseStyle


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreTextAPI200ResponseReadabilityMainscores**](ScoreTextAPI200ResponseReadabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreTextAPI200ResponseStyleSubscores**](ScoreTextAPI200ResponseStyleSubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_style import ScoreTextAPI200ResponseStyle

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseStyle from a JSON string
score_text_api200_response_style_instance = ScoreTextAPI200ResponseStyle.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseStyle.to_json())

# convert the object into a dict
score_text_api200_response_style_dict = score_text_api200_response_style_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseStyle from a dict
score_text_api200_response_style_from_dict = ScoreTextAPI200ResponseStyle.from_dict(score_text_api200_response_style_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


