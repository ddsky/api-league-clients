# ScoreText200ResponseSkimmability


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreText200ResponseSkimmabilityMainscores**](ScoreText200ResponseSkimmabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreText200ResponseSkimmabilitySubscores**](ScoreText200ResponseSkimmabilitySubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_skimmability import ScoreText200ResponseSkimmability

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseSkimmability from a JSON string
score_text200_response_skimmability_instance = ScoreText200ResponseSkimmability.from_json(json)
# print the JSON string representation of the object
print ScoreText200ResponseSkimmability.to_json()

# convert the object into a dict
score_text200_response_skimmability_dict = score_text200_response_skimmability_instance.to_dict()
# create an instance of ScoreText200ResponseSkimmability from a dict
score_text200_response_skimmability_form_dict = score_text200_response_skimmability.from_dict(score_text200_response_skimmability_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


