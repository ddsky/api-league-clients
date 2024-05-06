# ScoreText200ResponseStyle


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreText200ResponseReadabilityMainscores**](ScoreText200ResponseReadabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreText200ResponseStyleSubscores**](ScoreText200ResponseStyleSubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_style import ScoreText200ResponseStyle

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseStyle from a JSON string
score_text200_response_style_instance = ScoreText200ResponseStyle.from_json(json)
# print the JSON string representation of the object
print(ScoreText200ResponseStyle.to_json())

# convert the object into a dict
score_text200_response_style_dict = score_text200_response_style_instance.to_dict()
# create an instance of ScoreText200ResponseStyle from a dict
score_text200_response_style_from_dict = ScoreText200ResponseStyle.from_dict(score_text200_response_style_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


