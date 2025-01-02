# ScoreTextAPI200ResponseReadability


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreTextAPI200ResponseReadabilityMainscores**](ScoreTextAPI200ResponseReadabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreTextAPI200ResponseReadabilitySubscores**](ScoreTextAPI200ResponseReadabilitySubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_readability import ScoreTextAPI200ResponseReadability

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseReadability from a JSON string
score_text_api200_response_readability_instance = ScoreTextAPI200ResponseReadability.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseReadability.to_json())

# convert the object into a dict
score_text_api200_response_readability_dict = score_text_api200_response_readability_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseReadability from a dict
score_text_api200_response_readability_from_dict = ScoreTextAPI200ResponseReadability.from_dict(score_text_api200_response_readability_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


