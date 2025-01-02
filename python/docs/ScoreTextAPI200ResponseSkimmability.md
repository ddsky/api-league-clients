# ScoreTextAPI200ResponseSkimmability


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreTextAPI200ResponseSkimmabilityMainscores**](ScoreTextAPI200ResponseSkimmabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreTextAPI200ResponseSkimmabilitySubscores**](ScoreTextAPI200ResponseSkimmabilitySubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_skimmability import ScoreTextAPI200ResponseSkimmability

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseSkimmability from a JSON string
score_text_api200_response_skimmability_instance = ScoreTextAPI200ResponseSkimmability.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseSkimmability.to_json())

# convert the object into a dict
score_text_api200_response_skimmability_dict = score_text_api200_response_skimmability_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseSkimmability from a dict
score_text_api200_response_skimmability_from_dict = ScoreTextAPI200ResponseSkimmability.from_dict(score_text_api200_response_skimmability_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


