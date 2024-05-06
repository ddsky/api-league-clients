# ScoreText200ResponseInterestingness


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreText200ResponseSkimmabilityMainscores**](ScoreText200ResponseSkimmabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreText200ResponseInterestingnessSubscores**](ScoreText200ResponseInterestingnessSubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text200_response_interestingness import ScoreText200ResponseInterestingness

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreText200ResponseInterestingness from a JSON string
score_text200_response_interestingness_instance = ScoreText200ResponseInterestingness.from_json(json)
# print the JSON string representation of the object
print(ScoreText200ResponseInterestingness.to_json())

# convert the object into a dict
score_text200_response_interestingness_dict = score_text200_response_interestingness_instance.to_dict()
# create an instance of ScoreText200ResponseInterestingness from a dict
score_text200_response_interestingness_from_dict = ScoreText200ResponseInterestingness.from_dict(score_text200_response_interestingness_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


