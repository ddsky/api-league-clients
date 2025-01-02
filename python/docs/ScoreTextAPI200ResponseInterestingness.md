# ScoreTextAPI200ResponseInterestingness


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**mainscores** | [**ScoreTextAPI200ResponseSkimmabilityMainscores**](ScoreTextAPI200ResponseSkimmabilityMainscores.md) |  | [optional] 
**subscores** | [**ScoreTextAPI200ResponseInterestingnessSubscores**](ScoreTextAPI200ResponseInterestingnessSubscores.md) |  | [optional] 

## Example

```python
from apileague.models.score_text_api200_response_interestingness import ScoreTextAPI200ResponseInterestingness

# TODO update the JSON string below
json = "{}"
# create an instance of ScoreTextAPI200ResponseInterestingness from a JSON string
score_text_api200_response_interestingness_instance = ScoreTextAPI200ResponseInterestingness.from_json(json)
# print the JSON string representation of the object
print(ScoreTextAPI200ResponseInterestingness.to_json())

# convert the object into a dict
score_text_api200_response_interestingness_dict = score_text_api200_response_interestingness_instance.to_dict()
# create an instance of ScoreTextAPI200ResponseInterestingness from a dict
score_text_api200_response_interestingness_from_dict = ScoreTextAPI200ResponseInterestingness.from_dict(score_text_api200_response_interestingness_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


