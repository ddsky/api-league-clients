# ScoreText200ResponseReadability


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreText200ResponseReadabilityMainscores**](ScoreText200ResponseReadabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreText200ResponseReadabilitySubscores**](ScoreText200ResponseReadabilitySubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_readability import ScoreText200ResponseReadability

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseReadability from a JSON string
score_text200_response_readability_instance = ScoreText200ResponseReadability.from_json(json)
# print the JSON string representation of the object
print ScoreText200ResponseReadability.to_json()

# convert the object into a dict
score_text200_response_readability_dict = score_text200_response_readability_instance.to_dict()
# create an instance of ScoreText200ResponseReadability from a dict
score_text200_response_readability_form_dict = score_text200_response_readability.from_dict(score_text200_response_readability_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


